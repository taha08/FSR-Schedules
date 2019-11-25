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
		<title>Emploiedutemps</title>
          <link rel="stylesheet" href="ficcss.css" />

          <script src="jquery-3.4.1.min.js" />
          <!-- <script src="jquery.simplePagination.js" /> -->
                    <script src="http://flaviusmatis.github.io/simplePagination.js/jquery.simplePagination.js" />
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
        <td id="none">  <br></br> <br></br> <br></br> <br></br><br></br> <h3 class="par"> Univérsité Mohammed V <br></br>
            Faculté des Sciences <br></br>
             Rabat <br></br>
             <img src="logo.jpg" alt="logo" id="logo"> </img></h3> 
       </td>
             
      
    <td id="none" >  <h3 class="univ"> Année Univérsitaire 2019/2020</h3> </td>
    
     <td id="none">  
      Filiere : <xsl:value-of select="../../../DescriptionGENERALE/Nom"/><br/>

      Groupe :<xsl:value-of select="Nom"/> <br/>

      </td>
     </tr>
     
      </table>
  
   </div>
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
                       jQuery('#<xsl:value-of select="$nomgroupe"/>'+'<xsl:value-of select="$date"/>'+hour).append('        ');
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
             <th colspan="4" class="heure"><h4>08:00</h4></th>
             <th colspan="4" class="heure"><h4>09:00 </h4></th> 
             <th colspan="4" class="heure"><h4>10:00</h4></th>
             <th colspan="4" class="heure"><h4>11:00</h4></th>
             <th colspan="4" class="heure"><h4>12:00</h4></th>
             <th colspan="4" class="heure"><h4>13:00</h4></th>
             <th colspan="4" class="heure"><h4>14:00</h4></th>
             <th colspan="4" class="heure"><h4>15:00</h4></th>
             <th colspan="4" class="heure"><h4>16:00</h4></th>
             <th colspan="4" class="heure"><h4>17:00</h4></th>
             <th colspan="4" class="heure"><h4>18:00</h4></th>
             <th colspan="4" class="heure"><h4>19:00</h4></th>
              
                
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
     </fieldset>

  
          </xsl:for-each> 
		
		</div>
    <div id="pagination-container"></div>
		
	
		
		
		
		
		
		
		</body>
		</html>
		
		
		
	</xsl:template>
</xsl:stylesheet>