var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0,5); //seleccionamos los primeros 5 elementos del array
  novedades = novedades.map(novedad => {
    if (novedad.img_id){
        const imagen = cloudinary.url(novedad.img_id,{
            width: 460,
          
            crop: 'fill'
        });
        return{
            ...novedad,  
            imagen 
        }
    } else {
        return{
            ...novedad,  
            imagen:'/images/noimage.jpg'
        }
    }
});
  res.render('index', { novedades 
  });

});

router.post('/',async(req, res, next)=> {
  console.log(req.body) // estoy capturando datos?¿
  var Nombre=req.body.Nombre;//1
  var Fecha=req.body.Fecha;//2
  var Tipo=req.body.Tipo;//3
  var Email=req.body.Email;//4@
  
  var obj={
    to:'gabrielanoeminunez@gmail.com',
    subjet: 'contacto web boniambientaciones',
    html: Nombre +"    "+ Fecha + "se contacto a traves de la pagina web y quiere más info a este correo:"+Email
   } //cierra var obj
  var transport= nodemailer.createTransport({
    host:process.env.SMTP_HOST,
    port:process.env.SMTP_PORT,
    auth: {
      user:process.env.SMTP_USER,
      pass:process.env.SMTP_PASS
    }

  });//cierra transporter

  var info= await transport.sendMail(obj);
  res.render('contacto', {
    message:'Mensaje enviado correctamente'
  }); 
});//cierra peticion del POST

module.exports = router;
