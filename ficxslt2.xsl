<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:output 
        method="html"
    	encoding="UTF-8"
    	doctype-public="-//W3C//DTD HTML 4.01//EN"
   	doctype-system="http://www.w3.org/TR/html4/strict.dtd"
    	indent="yes" />
	<xsl:template match="/">
		<html>
		<head>
		<title>fsremplois</title>


  
   <link rel="stylesheet" href="ficcss.css" />
    <link rel="stylesheet" href="bootstrap.css" />
          

          <script src="jquery-3.4.1.min.js" />
          <script src="jquery.simplePagination.js" /> 
          <!-- <script src="http://flaviusmatis.github.io/simplePagination.js/jquery.simplePagination.js" /> -->
          <script src="pagination.js" />


		</head>

		<body>
  <div class="list-wrapper">
   <xsl:for-each select="Filiere/LesRessources/GROUPES/Groupe">
	      <xsl:variable name="nomgroupe" select="translate(Nom,'( )','_')"/>
        <xsl:variable name="nomfil" select="../../DescriptionGENERALE/Nom"/>
  <div class="list-item">
    
    
     <table id="head">
     <tr id="none">
        <td id="none">  <br></br> <br></br> <br></br> <br></br><br></br> <h5 class="par"> Univérsité Mohammed V <br></br>
            <b>Faculté des Sciences </b> <br></br>
             Rabat <br></br>
             <img src="logo.jpg" alt="logo" id="logo"> </img></h5> 
       </td>
             
      
    <td id="none" >  <h5 class="univ"> <b> Année Univérsitaire 2019/2020 </b></h5> </td>
    
     <td id="none">  
     <h6>
      Filiere : <xsl:value-of select="../../../DescriptionGENERALE/Nom"/><br/>

      Groupe :<xsl:value-of select="Nom"/> <br/>
      </h6>

      </td>
     </tr>
     
      </table>
  
  
      <xsl:for-each select="../../../LesActivites/ENSEIGNEMENTS/Enseignement/Description/Ressources/LesGroupes/UnGroupe">
             
               

         <xsl:variable name="nomgroupe2" select="translate(Nom,'( )','_')"/>
            <xsl:if test="$nomgroupe2=$nomgroupe">
           <!--  <xsl:variable name="nb" select=" count(../../RESERVATIONS/UneSeance) "/>
               <xsl:value-of select="$nb"/> -->
                <xsl:variable name="date" select="../../RESERVATIONS/UneSeance/Date"/>
                <xsl:variable name="heure" select="../../RESERVATIONS/UneSeance/Heure"/>
                <xsl:variable name="duree" select="../../RESERVATIONS/UneSeance/Duree"/>
                <xsl:variable name="matiere" select="../../../Matiere/Nom"/>
                <xsl:variable name="type" select="../../../Matiere/Type"/>
                <xsl:variable name="salle" select="../../../TypeSalle/Nom"/>

                 
                
                   

                  <xsl:if test="$duree=30">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',2);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                         
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
                 
              
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                      
                  });
                       </script>
                    </xsl:if>

                   <xsl:if test="$duree=400">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',16);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }   
                      
                  });
                       </script>
                    </xsl:if> 

                  <xsl:if test="$duree=45">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',3);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                               if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                      
                  });
                       </script>
                    </xsl:if>  

                 <xsl:if test="$duree=100">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',4);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                      
                      });
                       </script>
                    </xsl:if>

                    <xsl:if test="$duree=115">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',5);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                              if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }    
                      
                      });
                       </script>
                    </xsl:if>

                    <xsl:if test="$duree=130">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                        
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',6);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                      
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        let espac="<br></br>";
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append(espac);
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         

                        
                           
                            
                               
                                                       
                            
               
                 
                    
          
                        });
                       </script>
                    </xsl:if>

                    <xsl:if test="$duree=145">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',7);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('      ');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  
                                if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               } 

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         

                        
                           
                            
                               
                                                       
                            
               
                 
                    
          
                        });
                       </script>
                    </xsl:if>

                    <xsl:if test="$duree=200">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',8);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('      ');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  
                                if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               } 

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                            if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }    
                         

                        
        
          
                        });
                       </script>
                    </xsl:if>
    
                     <xsl:if test="$duree=215">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',9);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('      ');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  
                                if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               } 

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                            if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                               if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }    
                         

                        
                           
                            
                               
                                                       
                            
               
                 
                    
          
                        });
                       </script>
                    </xsl:if>

                    <xsl:if test="$duree=230">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',10);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('      ');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  
                                if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               } 

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                            if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                               if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }    

                                 if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         

                        
                           
                            
                               
                                                       
                            
               
                 
                    
          
                        });
                       </script>
                    </xsl:if>

                     <xsl:if test="$duree=245">
                       <script>

                         jQuery(document).ready(function(jQuery)
                          {
                          
                        let hour=<xsl:value-of select="$heure"/>;
                         jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',11);        
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                      
          
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('-');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('      ');
                        jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
          
                        
                       
                        var aa=hour.toString();
                        var i; var j=7;
                    
                        
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  
                                if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               } 

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                               jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                            if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                               if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }    

                                 if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                                   if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                         
          
                        });
                       </script>
                    </xsl:if>


                   <xsl:if test="$duree=300">
                       <script>
                         jQuery(document).ready(function(jQuery)
                          {
                          
                                let hour=<xsl:value-of select="$heure"/>;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).attr('colspan',12);
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration courier');
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$matiere"/>'+'-');
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('<xsl:value-of select="$type"/>'+'');
                      let espac="<br></br>";
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append(espac);
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('('+'<xsl:value-of select="$salle"/>'+')');
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).addClass('coloration');
                          var ab ='#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour;
                      
                        var aa=hour.toString();
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                               }  

                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              }  
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                              jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                          if ( hour.toString().includes("45") )
                             {
                              hour=hour+55;
                             jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                              
                             }
                              else
                              {
                                hour=hour+15;
                                 jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).remove();
                                 
                              } 
                               
                          
                      
          
                           });
                       </script>
                    </xsl:if> 



              
                  </xsl:if>


                  
                  
        
        </xsl:for-each>    
       <fieldset>
           <table id="{$nomgroupe}">
 <!--    <caption> <h4>8:00</h4> <h4>9:00</h4> <h4>10:00</h4> <h4>11:00</h4> <h4>12:00</h4> <h4>13:00</h4
        ><h4>14:00</h4><h4>15:00</h4><h4>16:00</h4><h4>17:00</h4><h4>18:00</h4> </caption> -->
        <tr class="tr verdana"> 
             <th colspan="1" class="heure"></th>
             <th colspan="4" class="heure"><h4 class="h">08:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">09:00 </h4></th> 
             <th colspan="4" class="heure"><h4 class="h">10:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">11:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">12:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">13:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">14:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">15:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">16:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">17:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">18:00</h4></th>
             <th colspan="4" class="heure"><h4 class="h">19:00</h4></th>
              
                
        </tr>
   <tr class="tr" id="{$nomgroupe}01-09-08" >


        <th class="jour" >lundi</th> 
        <td id="{$nomgroupe}01-09-08800"></td>
        <td id="{$nomgroupe}01-09-08815"></td> 
        <td id="{$nomgroupe}01-09-08830"></td>
        <td id="{$nomgroupe}01-09-08845"></td>

        <td id="{$nomgroupe}01-09-08900"></td>
        <td id="{$nomgroupe}01-09-08915" ></td> 
        <td id="{$nomgroupe}01-09-08930"></td>
        <td id="{$nomgroupe}01-09-08945"></td> 

        <td id="{$nomgroupe}01-09-081000"></td>
        <td id="{$nomgroupe}01-09-081015"></td> 
        <td id="{$nomgroupe}01-09-081030"></td>
        <td id="{$nomgroupe}01-09-081045"></td>

        <td id="{$nomgroupe}01-09-081100"></td>
        <td id="{$nomgroupe}01-09-081115"></td> 
        <td id="{$nomgroupe}01-09-081130"></td>
        <td id="{$nomgroupe}01-09-081145"></td>

        <td id="{$nomgroupe}01-09-081200"></td>
        <td id="{$nomgroupe}01-09-081215"></td> 
        <td id="{$nomgroupe}01-09-081230"></td>
        <td id="{$nomgroupe}01-09-081245"></td>  
         
        <td class="recreation" id="{$nomgroupe}01-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}01-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}01-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}01-09-081345"></td> 

         <td id="{$nomgroupe}01-09-081400"></td>
         <td id="{$nomgroupe}01-09-081415"></td> 
         <td id="{$nomgroupe}01-09-081430"></td>
         <td id="{$nomgroupe}01-09-081445"></td>  
         
         <td id="{$nomgroupe}01-09-081500"></td>
         <td id="{$nomgroupe}01-09-081515"></td> 
         <td id="{$nomgroupe}01-09-081530"></td>
         <td id="{$nomgroupe}01-09-081545"></td>
         
        <td id="{$nomgroupe}01-09-081600"></td>
        <td id="{$nomgroupe}01-09-081615"></td> 
        <td id="{$nomgroupe}01-09-081630"></td>
        <td id="{$nomgroupe}01-09-081645"></td>
        
         <td id="{$nomgroupe}01-09-081700"></td>
         <td id="{$nomgroupe}01-09-081715"></td> 
         <td id="{$nomgroupe}01-09-081730"></td>
         <td id="{$nomgroupe}01-09-081745"></td>
         
        <td id="{$nomgroupe}01-09-081800"></td>
        <td id="{$nomgroupe}01-09-081815"></td> 
        <td id="{$nomgroupe}01-09-081830"></td>
        <td id="{$nomgroupe}01-09-081845"></td>
        
   </tr>

   <tr class="tr" id="{$nomgroupe}02-09-08" >

       
        <th class="heure">Mardi</th>
                
        <td id="{$nomgroupe}02-09-08800"></td>
        <td id="{$nomgroupe}02-09-08815"></td> 
        <td id="{$nomgroupe}02-09-08830"></td>
        <td id="{$nomgroupe}02-09-08845"></td>  
               
               
        <td id="{$nomgroupe}02-09-08900"></td>
        <td id="{$nomgroupe}02-09-08915" ></td> 
        <td id="{$nomgroupe}02-09-08930"></td>
        <td id="{$nomgroupe}02-09-08945"></td>    
               
                
        <td id="{$nomgroupe}02-09-081000"></td>
        <td id="{$nomgroupe}02-09-081015"></td> 
        <td id="{$nomgroupe}02-09-081030"></td>
        <td id="{$nomgroupe}02-09-081045"></td>

        <td id="{$nomgroupe}02-09-081100"></td>
        <td id="{$nomgroupe}02-09-081115"></td> 
        <td id="{$nomgroupe}02-09-081130"></td>
        <td id="{$nomgroupe}02-09-081145"></td>

        <td id="{$nomgroupe}02-09-081200"></td>
        <td id="{$nomgroupe}02-09-081215"></td> 
        <td id="{$nomgroupe}02-09-081230"></td>
        <td id="{$nomgroupe}02-09-081245"></td>  
        
        <td class="recreation" id="{$nomgroupe}02-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}02-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}02-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}02-09-081345"></td> 

         <td id="{$nomgroupe}02-09-081400"></td>
         <td id="{$nomgroupe}02-09-081415"></td> 
         <td id="{$nomgroupe}02-09-081430"></td>
         <td id="{$nomgroupe}02-09-081445"></td>  
         
         <td id="{$nomgroupe}02-09-081500"></td>
         <td id="{$nomgroupe}02-09-081515"></td> 
         <td id="{$nomgroupe}02-09-081530"></td>
         <td id="{$nomgroupe}02-09-081545"></td>
         
         
        <td id="{$nomgroupe}02-09-081600"></td>
        <td id="{$nomgroupe}02-09-081615"></td> 
        <td id="{$nomgroupe}02-09-081630"></td>
        <td id="{$nomgroupe}02-09-081645"></td>
        
         <td id="{$nomgroupe}02-09-081700"></td>
         <td id="{$nomgroupe}02-09-081715"></td> 
         <td id="{$nomgroupe}02-09-081730"></td>
         <td id="{$nomgroupe}02-09-081745"></td>
         
        <td id="{$nomgroupe}02-09-081800"></td>
        <td id="{$nomgroupe}02-09-081815"></td> 
        <td id="{$nomgroupe}02-09-081830"></td>
        <td id="{$nomgroupe}02-09-081845"></td>
    </tr>

   <tr class="tr" id="{$nomgroupe}03-09-08">

       
        <th class="heure" >Mercredi</th>
                
        <td id="{$nomgroupe}03-09-08800"></td>
        <td id="{$nomgroupe}03-09-08815"></td> 
        <td id="{$nomgroupe}03-09-08830"></td>
        <td id="{$nomgroupe}03-09-08845"></td>  
          
        <td id="{$nomgroupe}03-09-08900"></td>
        <td id="{$nomgroupe}03-09-08915" ></td> 
        <td id="{$nomgroupe}03-09-08930"></td>
        <td id="{$nomgroupe}03-09-08945"></td>    
          
        <td id="{$nomgroupe}03-09-081000"></td>
        <td id="{$nomgroupe}03-09-081015"></td> 
        <td id="{$nomgroupe}03-09-081030"></td>
        <td id="{$nomgroupe}03-09-081045"></td>

        <td id="{$nomgroupe}03-09-081100"></td>
        <td id="{$nomgroupe}03-09-081115"></td> 
        <td id="{$nomgroupe}03-09-081130"></td>
        <td id="{$nomgroupe}03-09-081145"></td>

        <td id="{$nomgroupe}03-09-081200"></td>
        <td id="{$nomgroupe}03-09-081215"></td> 
        <td id="{$nomgroupe}03-09-081230"></td>
        <td id="{$nomgroupe}03-09-081245"></td>  
     
        <td class="recreation" id="{$nomgroupe}03-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}03-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}03-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}03-09-081345"></td> 

         <td id="{$nomgroupe}03-09-081400"></td>
         <td id="{$nomgroupe}03-09-081415"></td> 
         <td id="{$nomgroupe}03-09-081430"></td>
         <td id="{$nomgroupe}03-09-081445"></td>  
         
         <td id="{$nomgroupe}03-09-081500"></td>
         <td id="{$nomgroupe}03-09-081515"></td> 
         <td id="{$nomgroupe}03-09-081530"></td>
         <td id="{$nomgroupe}03-09-081545"></td>
         
         
        <td id="{$nomgroupe}03-09-081600"></td>
        <td id="{$nomgroupe}03-09-081615"></td> 
        <td id="{$nomgroupe}03-09-081630"></td>
        <td id="{$nomgroupe}03-09-081645"></td>
        
         <td id="{$nomgroupe}03-09-081700"></td>
         <td id="{$nomgroupe}03-09-081715"></td> 
         <td id="{$nomgroupe}03-09-081730"></td>
         <td id="{$nomgroupe}03-09-081745"></td>
         
        <td id="{$nomgroupe}03-09-081800"></td>
        <td id="{$nomgroupe}03-09-081815"></td> 
        <td id="{$nomgroupe}03-09-081830"></td>
        <td id="{$nomgroupe}03-09-081845"></td>
               
    </tr>
   <tr class="tr" id="{$nomgroupe}04-09-08">

               
               <th class="heure">Jeudi</th>
        
        <td id="{$nomgroupe}04-09-08800"></td>
        <td id="{$nomgroupe}04-09-08815"></td> 
        <td id="{$nomgroupe}04-09-08830"></td>
        <td id="{$nomgroupe}04-09-08845"></td>  
         
        <td id="{$nomgroupe}04-09-08900"></td>
        <td id="{$nomgroupe}04-09-08915" ></td> 
        <td id="{$nomgroupe}04-09-08930"></td>
        <td id="{$nomgroupe}04-09-08945"></td>    
          
        <td id="{$nomgroupe}04-09-081000"></td>
        <td id="{$nomgroupe}04-09-081015"></td> 
        <td id="{$nomgroupe}04-09-081030"></td>
        <td id="{$nomgroupe}04-09-081045"></td>

        <td id="{$nomgroupe}04-09-081100"></td>
        <td id="{$nomgroupe}04-09-081115"></td> 
        <td id="{$nomgroupe}04-09-081130"></td>
        <td id="{$nomgroupe}04-09-081145"></td>

        <td id="{$nomgroupe}04-09-081200"></td>
        <td id="{$nomgroupe}04-09-081215"></td> 
        <td id="{$nomgroupe}04-09-081230"></td>
        <td id="{$nomgroupe}04-09-081245"></td>  
     
        <td class="recreation" id="{$nomgroupe}04-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}04-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}04-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}04-09-081345"></td> 

         <td id="{$nomgroupe}04-09-081400"></td>
         <td id="{$nomgroupe}04-09-081415"></td> 
         <td id="{$nomgroupe}04-09-081430"></td>
         <td id="{$nomgroupe}04-09-081445"></td>  
     
         <td id="{$nomgroupe}04-09-081500"></td>
         <td id="{$nomgroupe}04-09-081515"></td> 
         <td id="{$nomgroupe}04-09-081530"></td>
         <td id="{$nomgroupe}04-09-081545"></td>
         
         
        <td id="{$nomgroupe}04-09-081600"></td>
        <td id="{$nomgroupe}04-09-081615"></td> 
        <td id="{$nomgroupe}04-09-081630"></td>
        <td id="{$nomgroupe}04-09-081645"></td>
        
         <td id="{$nomgroupe}04-09-081700"></td>
         <td id="{$nomgroupe}04-09-081715"></td> 
         <td id="{$nomgroupe}04-09-081730"></td>
         <td id="{$nomgroupe}04-09-081745"></td>
         
        <td id="{$nomgroupe}04-09-081800"></td>
        <td id="{$nomgroupe}04-09-081815"></td> 
        <td id="{$nomgroupe}04-09-081830"></td>
        <td id="{$nomgroupe}04-09-081845"></td>               
              
    </tr>
   <tr class="tr" id="{$nomgroupe}05-09-08">

                       
               <th class="heure" >Vendredi</th>
        <td id="{$nomgroupe}05-09-08800"></td>
        <td id="{$nomgroupe}05-09-08815"></td> 
        <td id="{$nomgroupe}05-09-08830"></td>
        <td id="{$nomgroupe}05-09-08845"></td>  
          
        <td id="{$nomgroupe}05-09-08900"></td>
        <td id="{$nomgroupe}05-09-08915"></td> 
        <td id="{$nomgroupe}05-09-08930"></td>
        <td id="{$nomgroupe}05-09-08945"></td>    
          
        <td id="{$nomgroupe}05-09-081000"></td>
        <td id="{$nomgroupe}05-09-081015"></td> 
        <td id="{$nomgroupe}05-09-081030"></td>
        <td id="{$nomgroupe}05-09-081045"></td>

        <td id="{$nomgroupe}05-09-081100"></td>
        <td id="{$nomgroupe}05-09-081115"></td> 
        <td id="{$nomgroupe}05-09-081130"></td>
        <td id="{$nomgroupe}05-09-081145"></td>

        <td id="{$nomgroupe}05-09-081200"></td>
        <td id="{$nomgroupe}05-09-081215"></td> 
        <td id="{$nomgroupe}05-09-081230"></td>
        <td id="{$nomgroupe}05-09-081245"></td>  
        
        <td class="recreation" id="{$nomgroupe}05-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}05-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}05-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}05-09-081345"></td> 

         <td id="{$nomgroupe}05-09-081400"></td>
         <td id="{$nomgroupe}05-09-081415"></td> 
         <td id="{$nomgroupe}05-09-081430"></td>
         <td id="{$nomgroupe}05-09-081445"></td>  
     
         <td id="{$nomgroupe}05-09-081500"></td>
         <td id="{$nomgroupe}05-09-081515"></td> 
         <td id="{$nomgroupe}05-09-081530"></td>
         <td id="{$nomgroupe}05-09-081545"></td>
         
         
        <td id="{$nomgroupe}05-09-081600"></td>
        <td id="{$nomgroupe}05-09-081615"></td> 
        <td id="{$nomgroupe}05-09-081630"></td>
        <td id="{$nomgroupe}05-09-081645"></td>
        
         <td id="{$nomgroupe}05-09-081700"></td>
         <td id="{$nomgroupe}05-09-081715"></td> 
         <td id="{$nomgroupe}05-09-081730"></td>
         <td id="{$nomgroupe}05-09-081745"></td>
         
        <td id="{$nomgroupe}05-09-081800"></td>
        <td id="{$nomgroupe}05-09-081815"></td> 
        <td id="{$nomgroupe}05-09-081830"></td>
        <td id="{$nomgroupe}05-09-081845"></td>      
    </tr>
   <tr class="tr" id="{$nomgroupe}06-09-08">

                               
               <th class="heure" >Samedi</th>
        <td id="{$nomgroupe}06-09-08800"></td>
        <td id="{$nomgroupe}06-09-08815"></td> 
        <td id="{$nomgroupe}06-09-08830"></td>
        <td id="{$nomgroupe}06-09-08845"></td>  
          
        <td id="{$nomgroupe}06-09-08900"></td>
        <td id="{$nomgroupe}06-09-08915" ></td> 
        <td id="{$nomgroupe}06-09-08930"></td>
        <td id="{$nomgroupe}06-09-08945"></td>    
        
        <td id="{$nomgroupe}06-09-081000"></td>
        <td id="{$nomgroupe}06-09-081015"></td> 
        <td id="{$nomgroupe}06-09-081030"></td>
        <td id="{$nomgroupe}06-09-081045"></td>

        <td id="{$nomgroupe}06-09-081100"></td>
        <td id="{$nomgroupe}06-09-081115"></td> 
        <td id="{$nomgroupe}06-09-081130"></td>
        <td id="{$nomgroupe}06-09-081145"></td>

        <td id="{$nomgroupe}06-09-081200"></td>
        <td id="{$nomgroupe}06-09-081215"></td> 
        <td id="{$nomgroupe}06-09-081230"></td>
        <td id="{$nomgroupe}06-09-081245"></td>  
        
        <td class="recreation" id="{$nomgroupe}06-09-081300"></td>
        <td class="recreation" id="{$nomgroupe}06-09-081315"></td> 
        <td class="recreation" id="{$nomgroupe}06-09-081330"></td>
        <td class="recreation" id="{$nomgroupe}06-09-081345"></td> 

         <td id="{$nomgroupe}06-09-081400"></td>
         <td id="{$nomgroupe}06-09-081415"></td> 
         <td id="{$nomgroupe}06-09-081430"></td>
         <td id="{$nomgroupe}06-09-081445"></td>  
     
         <td id="{$nomgroupe}06-09-081500"></td>
         <td id="{$nomgroupe}06-09-081515"></td> 
         <td id="{$nomgroupe}06-09-081530"></td>
         <td id="{$nomgroupe}06-09-081545"></td>
         
         
        <td id="{$nomgroupe}06-09-081600"></td>
        <td id="{$nomgroupe}06-09-081615"></td> 
        <td id="{$nomgroupe}06-09-081630"></td>
        <td id="{$nomgroupe}06-09-081645"></td>
        
         <td id="{$nomgroupe}06-09-081700"></td>
         <td id="{$nomgroupe}06-09-081715"></td> 
         <td id="{$nomgroupe}06-09-081730"></td>
         <td id="{$nomgroupe}06-09-081745"></td>
         
        <td id="{$nomgroupe}06-09-081800"></td>
        <td id="{$nomgroupe}06-09-081815"></td> 
        <td id="{$nomgroupe}06-09-081830"></td>
        <td id="{$nomgroupe}06-09-081845"></td>                                             
          
    </tr>


     </table>
                <xsl:if test="contains($nomgroupe,'SMP') and contains($nomgroupe,'S1') and contains($nomgroupe,'SMC')  ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M1 : Mécanique du point </b> </h5> </li>
                            <li> <h5> <b> M2 : Thermodynamique </b> </h5> </li>
                            <li> <h5> <b> M4 : Thermochimie </b></h5></li>
                              <li> <h5> <b> M3 : Atomistique </b></h5></li>
                          </ul>
                        </div>
                     
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M5 : Analyse 1 </b></h5></li>
                            <li> <h5> <b>M6 : Algèbre 1 </b></h5></li>
                            <li> <h5> <b> M7 : Langue et terminologie I </b></h5></li>
                             
                          </ul>
                        </div>
                        
                     </div>
                   </div>
                </xsl:if>

             <xsl:if test="( contains($nomgroupe,'SMI') and contains($nomgroupe,'S1') )or (contains($nomgroupe,'SMA') and contains($nomgroupe,'S1'))  ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                         
                          <ul class="a">
                            <li> <h5> <b> M1 : Suites Numériques et Fonctions </b> </h5> </li>
                            <li> <h5> <b> M2: Généralités et Arithmétique dans Z </b> </h5> </li>
                            <li> <h5> <b> M3:  Introduction à l'Informatique </b></h5></li>
                              <li> <h5> <b> M4: Mécanique du point </b></h5></li>
                          </ul>
                        </div>
                       
                        <div class="col-md-6">
                             <ul class="a">
                            
                            <li> <h5> <b>M5 :: Thermodynamique </b></h5></li>
                            <li> <h5> <b>M6 : Structures, Polynômes et Fractions Rationnelles  </b></h5></li>
                            <li> <h5> <b> M7 : Langue et terminologie I </b></h5></li>
                             
                          </ul>
                        </div>
                        
                     </div>
                   </div>
                </xsl:if>


                   <xsl:if test="( contains($nomgroupe,'SVT') and contains($nomgroupe,'S1') ) or (contains($nomgroupe,'SVI') and contains($nomgroupe,'STU') and contains($nomgroupe,'S1'))  ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M1: Biologie Cellulaire </b> </h5> </li>
                            <li> <h5> <b> M2: Embryologie et Histologie </b> </h5> </li>
                            <li> <h5> <b> M3: Géologie Générale </b></h5></li>
                              <li> <h5> <b> M4: Mathématiques </b></h5></li>
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M5: Optique-Physique Nucléaire et Thermodynamique </b></h5></li>
                            <li> <h5> <b>M6: Chimie générale  </b></h5></li>
                            <li> <h5> <b> M7: Langue et Terminologie I </b></h5></li>
                             
                          </ul>
                        </div>
                                        
                     </div>
                   </div>
                </xsl:if>


    <!-- s3 -->
     <xsl:if test="contains($nomgroupe,'SMP') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9: Mécanique du Solide </b> </h5> </li>
                            <li> <h5> <b> M10: Thermodynamique 2 </b> </h5> </li>
                            <li> <h5> <b> M11: Electromagnétisme dans le Vide</b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12: Chimie Organique Générale</b></h5></li>
                            <li> <h5> <b>M13: Analyse 3</b></h5></li>
                            <li> <h5> <b>M14: Analyse Numérique et Algorithme  </b></h5></li>
                             
                          </ul>
                        </div>
                               
                     </div>
                   </div>
                </xsl:if>

       <xsl:if test="contains($nomgroupe,'SMA') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9: Séries Numériques, Suites et Fonctions </b> </h5> </li>
                            <li> <h5> <b> M10: Fonctions de Plusieurs Variables </b> </h5> </li>
                            <li> <h5> <b> M11:  Reductons des Endomorphismes et Applications</b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12: Probabilités-Statistiques</b></h5></li>
                            <li> <h5> <b>M13: Electromagnétisme dans le vide </b></h5></li>
                            <li> <h5> <b>M14:  Algorithmique et Programmation  </b></h5></li>
                             
                          </ul>
                        </div>
                                        
                     </div>
                   </div>
                </xsl:if>

               <xsl:if test="contains($nomgroupe,'SMC') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9: Chimie Organique Générale </b> </h5> </li>
                            <li> <h5> <b> M10: Chimie Descriptive I: Diagrammes de Phases </b> </h5> </li>
                            <li> <h5> <b> M11: Electromagnétisme</b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12: Chimie Expérimentale</b></h5></li>
                            <li> <h5> <b>M13: Chimie des Electrolytes </b></h5></li>
                            <li> <h5> <b>M14:  Mathématique pour la Chimie </b></h5></li>
                             
                          </ul>
                        </div>
    
            
                     </div>
                   </div>
                </xsl:if>  


                <xsl:if test="contains($nomgroupe,'SMI') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9:  Programmation </b> </h5> </li>
                            <li> <h5> <b> M10: Algorithmique II </b> </h5> </li>
                            <li> <h5> <b> M11: Systèmes d'Exploitation I</b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12: Probabilités-Statistiques</b></h5></li>
                            <li> <h5> <b>M13:Technologie du Web </b></h5></li>
                            <li> <h5> <b>M14:   Electronique </b></h5></li>
                             
                          </ul>
                        </div>          
                     </div>
                   </div>
                </xsl:if> 
          
             <xsl:if test="contains($nomgroupe,'STU') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9:  Tectonique Analytique </b> </h5> </li>
                            <li> <h5> <b> M10: Tectonique Globale </b> </h5> </li>
                            <li> <h5> <b> M11: Petrologie Magmatique</b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12:  Petrologie Métamorphique</b></h5></li>
                            <li> <h5> <b>M13: Physique Appliquée aux Sciences de la Terre </b></h5></li>
                            <li> <h5> <b>M14:Statisques </b></h5></li>
                             
                          </ul>
                        </div>          
                     </div>
              
                   </div>
                </xsl:if> 

                <xsl:if test="contains($nomgroupe,'SVI') and contains($nomgroupe,'S3') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M9:Biochimie Structurale </b> </h5> </li>
                            <li> <h5> <b> M10: Microbiologie </b> </h5> </li>
                            <li> <h5> <b> M11: Ecologie Générale I </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M12:  Petrologie Métamorphique</b></h5></li>
                            <li> <h5> <b>M13: Biophysique</b></h5></li>
                            <li> <h5> <b>M14:Statisques </b></h5></li>
                             
                          </ul>
                        </div>          
                     </div>
      
                   </div>
                </xsl:if> 

<!-- S5 -->
              <xsl:if test="contains($nomgroupe,'SMA') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17: Topologie </b> </h5> </li>
                            <li> <h5> <b> M18: Mesures et Intégration </b> </h5> </li>
                            <li> <h5> <b> M19: Calcul Différentiel </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20: Programmation Mathématique</b></h5></li>
                            <li> <h5> <b>M21: Analyse Numérique 2</b></h5></li>
                            <li> <h5> <b>M22:Programmation Orientée Objet </b></h5></li>
                             
                          </ul>
                        </div>          
                     </div>
                   </div>
                </xsl:if> 

            <xsl:if test="contains($nomgroupe,'SMC') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17:  Chimie Organique Fontionnelle </b> </h5> </li>
                            <li> <h5> <b> M18: Radiocristallographie et Cristallochimie II </b> </h5> </li>
                            <li> <h5> <b> M19: Cinétique et Catalyse </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20: Chimie Théorique</b></h5></li>
                            <li> <h5> <b>M21: Electrochimie</b></h5></li>
                            <li> <h5> <b>M22: Techniques Spectroscopiques d'Analyse </b></h5></li>
                             
                          </ul>
                        </div>          
                     </div>
                   </div>
                </xsl:if> 

 <xsl:if test="contains($nomgroupe,'SMI') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17:   Bases de Données </b> </h5> </li>
                            <li> <h5> <b> M18: Compilation </b> </h5> </li>
                            <li> <h5> <b> M19: Recherche Opérationnelle </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20: Conception Orientée Objet (UML) </b></h5></li>
                           
                        
                          </ul>
                        </div>          
                     </div>
                   
                   </div>
                </xsl:if> 

            <xsl:if test="contains($nomgroupe,'SMP') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17:   Electronique analogique </b> </h5> </li>
                            <li> <h5> <b> M18: Mécanique Analytique et Vibrations </b> </h5> </li>
                            <li> <h5> <b> M19: Physique Nucléaire </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20:  Physique des Matériaux</b></h5></li>
                            <li> <h5> <b>M21: Physique Quantique</b></h5></li>
                            <li> <h5> <b>M22: Physique Statistique </b></h5></li>
                             
                          </ul>
                        </div>         
                     </div>
                   </div>
                </xsl:if>

                <xsl:if test="contains($nomgroupe,'STU') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17: Géologie du Maroc I</b> </h5> </li>
                            <li> <h5> <b> M18: Géologie du Maroc II </b> </h5> </li>
                            <li> <h5> <b> M19: Métallogénie </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20: Hydrogéologie</b></h5></li>
                            <li> <h5> <b>M21: Géophysique </b></h5></li>
                            <li> <h5> <b>M22: Géochimie     </b></h5></li>
                             
                          </ul>
                        </div>    
                     </div>
                   </div>
                </xsl:if>   

                <xsl:if test="contains($nomgroupe,'SVI') and contains($nomgroupe,'S5') ">
                   
                   <div class="container  ">
                     <div class="row" style="border:black solid; padding:10px;margin-right: -94px;margin-left: -85px;margin-top: -35px; ">
                        <div class="col-md-6">
                          <ul class="a">
                            <li> <h5> <b> M17:  Physiologie des Grandes Fonctions</b> </h5> </li>
                            <li> <h5> <b> M18: Croissance et Développement des Plantes </b> </h5> </li>
                            <li> <h5> <b> M19: Ecologie Générale II </b></h5></li>
                            
                          </ul>
                        </div>
                      
                        <div class="col-md-6">
                             <ul class="a">
                          
                            <li> <h5> <b>M20:Immunologie</b></h5></li>
                            <li> <h5> <b>M21: Génétique</b></h5></li>
                            <li> <h5> <b>M22:  Biologie Moléculaire    </b></h5></li>
                             
                          </ul>
                        </div> 
    
                     </div>
                   </div>
                </xsl:if> 
                     

     </fieldset>

   </div>
          </xsl:for-each> 
		
		</div>
    <div id="pagination-container"></div>
		
	
		
		
		
		
		
		
		</body>
		</html>
		
		
		
	</xsl:template>
</xsl:stylesheet>