//
//  SongService.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation
class SongService{
    
    var categorySong = [CategorySong]()
    
    func initSongs(){
        categorySong.append(CategorySong.init(categoryName: "Metal", categorySongs: [
            Song(imageUrl: "https://images.genius.com/9048c26badaaec80a2c76eec25f73536.1000x1000x1.jpg", title: "Dancing with the dead", description: "Powerwolf es una banda alemana de power metal creada en 2003 por los hermanos Charles y Matthew Greywolf, caracterizada por sus temáticas religiosas en las que mezcla líricamente conceptos satánicos y religiosos y por las referencias a leyendas sobre vampiros y hombres lobo. Sin duda alguna han resaltado por sus vestimentas similares a los cuentos folclóricos en dónde se hallan cultos en criptas"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81JtvRjJkSL._SS500_.jpg", title: "Amaranthine", description: "Amaranthe (inicialmente denominados Avalanche) es una agrupación sueca de heavy metal surgida en 2008 cuando Jake E (Dreamland, ex-Dream Evil) y Olof Mörck (Dragonland, Nightrage) se juntaron y decidieron crear un nuevo proyecto musical juntos. Su música fusiona tintes que van desde el metal extremo hasta pop moderno. El proyecto empezó a tomar forma con la llegada de la vocalista Elize Ryd (quien previamente colaboró con Kamelot y Dragonland), el vocalista Andreas Solveström (Cipher System, Within Y), el batería danés Morten Løwe Sørensen (The Cleansing, Koldborn, Mercenary) y finalmente la llegada del bajista Johan Andreassen (Engel)."),
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273457163bec7e8e4decf8c6375", title: "Psychosocial", description: "Slipknot es una banda estadounidense de metal alternativo formada en 1995 en Des Moines, Iowa, Estados Unidos. Sus integrantes en la actualidad son Corey Taylor, Craig Jones, Jim Root, Mick Thomson, Shawn Crahan y Sid Wilson. Slipknot es conocida por las máscaras características de cada uno de sus miembros, que cambian conforme han sacado más discografía.")]))
        
        categorySong.append(CategorySong.init(categoryName: "Pop", categorySongs: [
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273420c7ba982f6f92351fc0a2b", title: "Lágrimas Desordenadas", description: "Ramón Melendi Espina (Oviedo, 21 de enero de 1979), conocido artísticamente como Melendi, es un cantautor y compositor español de música pop y rumba. De joven sentía atracción por el fútbol, deporte que lo condujo por una corta carrera de futbolista, debutando en varias categorías inferiores en el equipo de su ciudad, el Real Oviedo. Dejó el fútbol a inicios de 2001, mismo año cuando decidió encaminar sus primeros pasos como músico, formando parte de una banda creada con sus amigos de nombre «El bosque de Sherwood».2​"),
            Song(imageUrl: "https://www.lahiguera.net/musicalia/artistas/estopa/disco/9905/tema/22979/estopa_camiseta_de_rokanrol-portada.jpg", title: "Camiseta de rokanrol", description: "Estopa es un dúo español de rumba española formado por los hermanos David y José Manuel Muñoz. Creado el 18 de octubre de 1999, el grupo es natural de la ciudad de Cornellá de Llobregat, comarca del Baix Llobregat (Barcelona) y con orígenes en Extremadura, más específicamente Zarza Capilla (Provincia de Badajoz)."),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81JqSmiA5TL._SL1500_.jpg", title: "Antes de que cuente diez", description: "Fito & Fitipaldis es un grupo musical español de rock and roll creado en 1997, por Fito Cabrales, de Platero y Tú. Inicialmente surgió como un proyecto paralelo que Cabrales decidió continuar tras la disolución de su anterior banda. Las ventas de la banda llevaron al grupo a recibir el Disco de Diamante por vender más de un millón de discos en octubre de 2007.2​ Hasta octubre de 2014 las ventas superaron los 1,6 millones de discos vendidos.")]))
        
        categorySong.append(CategorySong.init(categoryName: "Rock", categorySongs: [
            Song(imageUrl: "https://m.media-amazon.com/images/I/91NuHgWC6cL._SL1500_.jpg", title: "Highway To Hell", description: "AC/DC es una banda de hard rock británica-australiana, formada en 1973 en Australia por los hermanos escoceses Malcolm Young y Angus Young. Sus álbumes se han vendido en un total estimado de 200 millones de copias, embarcándose en giras multitudinarias por todo el mundo y sus éxitos han musicalizado varias producciones cinematográficas sobresalientes. Son famosas sus actuaciones en vivo, resultando vibrantes y exultantes espectáculos de primer orden.Mucho de ello se debe al extravagante estilo de su guitarrista principal y símbolo visual, Angus Young, quien asume el rol de guitarrista principal durante los conciertos, gracias a sus dinámicos y adrenalínicos despliegues escénicos uniformado de colegial callejero. Al comienzo, los conciertos y tiempos por los cuales sufrieron diversos cambios en su alineación. En 1974, la llegada del cantante Bon Scott se convertiría en una pieza clave del éxito del grupo. Su presencia en escena, lo convirtió en uno de los personajes más carismáticos de la historia del hard rock. La formación se estabilizaría con Cliff Williams (bajo) y Phil Rudd (baterista)."),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81j7xM-oijL._SL1400_.jpg", title: "Master of Puppets", description: "Metallica es un grupo estadounidense de thrash metal1​ originado de Los Ángeles, pero con base en San Francisco desde febrero de 1983. Fue fundada en 1981 en Los Ángeles por Lars Ulrich y James Hetfield, a los que se les unirían Dave Mustaine y Ron McGovney. Estos dos músicos fueron después sustituidos por el guitarrista Kirk Hammett y el bajista Cliff Burton respectivamente, Dave Mustaine fue despedido un año después de ingresar en la banda debido a su excesiva adicción al alcohol y su actitud violenta, siendo sustituido por Kirk Hammett (exguitarrista de Exodus)"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/717WquYEKmL._SS500_.jpg", title: "JungleLand", description: "Bruce Frederick Joseph Springsteen (Long Branch, Nueva Jersey, 23 de septiembre de 1949) es un cantante, músico y compositor estadounidense. Apodado a menudo The Boss —en español: El jefe—, Springsteen es ampliamente conocido por su trabajo con el grupo E Street Band y considerado uno de los artistas más exitosos de la música rock, con ventas que superan los 64,5 millones de álbumes en los Estados Unidos y más de 120 millones a nivel mundial,4​5​ y un total de diez discos números uno, un registro solo superado por The Beatles y Jay-Z.")]))
        
        categorySong.append(CategorySong.init(categoryName: "Funk", categorySongs: [
            Song(imageUrl: "https://m.media-amazon.com/images/I/512KX5bp0eL.jpg", title: "Esos cuernos", description: "O'Funk'illo es un grupo musical sevillano de funk rock (Funky andaluz embrutessío según los propios miembros del grupo). Su nombre proviene de mezclar la expresión andaluza ojú killo con funk, principal estilo de la banda. Aparte del funk, O'Funk'Illo cuenta con una gran variedad de estilos en sus composiciones, desde el metal al flamenco y el reggae."),
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273887b7c596249f628db6c6473", title: "Celebration", description: "Kool & the Gang es un grupo estadounidense de R&B, soul, funk y disco. El grupo se formó en Jersey City, Nueva Jersey, en 1964."),
            Song(imageUrl: "https://i.ytimg.com/vi/ILN7hG4kUFg/hqdefault.jpg", title: "Low Rider", description: "War (llamada inicialmente Eric Burdon & War) es una banda estadounidense de funk originaria de Long Beach, California. Fundada en 1969 y que se encuentra vigente hasta el día de hoy. Es la banda del exvocalista de The Animals. Uno de sus grandes hits, es el sencillo Low Rider, además de la famosa canción de 1975: Why Can't We Be Friends?.")]))
        
        categorySong.append(CategorySong.init(categoryName: "Rap", categorySongs: [
            Song(imageUrl: "https://images.genius.com/95fc67e21593295cea1a4e1440c463ba.640x640x1.jpg", title: "Yemen", description: "Javier Ibarra Ramos (Zaragoza, España, 1 de marzo de 1980), más conocido por su nombre artístico Kase.O, es un rapero, compositor y productor español, miembro del grupo de rap español Violadores del Verso junto a los también raperos SHO-HAI y Lírico, y el DJ R de Rumba."),
            Song(imageUrl: "https://images.genius.com/12b0502dd23c2136c84f80309623e8ed.1000x1000x1.jpg", title: "Rap", description: "Kaze, cuyo nombre real es Cristian Carrión Chacón, es un rapero y productor musical español que lleva en la escena hip hop de su país desde 2007. Nació el 6 de junio de 1993 en Cartagena, España. Antes de empezar con el rap escribía trovos, que son un tipo de poemas que se acompañan con guitarra."),
            Song(imageUrl: "https://kaseo.es/wp-content/uploads/2016/08/vivir-para-contarlo-violadores-del-verso.jpg", title: "A las cosas por su nombre", description: "Violadores del Verso es un grupo de rap español cuyos miembros son: Kase.O, Lírico, SHO-HAI y R de Rumba, todos ellos nacidos en Zaragoza. Son considerados un referente en el rap español, y uno de los mejores grupos de rap de habla hispana de la historia. Sus discos Genios (1999) y Vivir para contarlo (2006) aparecen siempre en las listas de mejores discos de rap español. Violadores del Verso ganó el disco de oro por Vivir para contarlo (2006), y junto con SFDK son los únicos grupos de rap español que hasta la fecha han conseguido ganar un disco de oro.")]))
        
    }
    func getSongs() -> [CategorySong]{
        return categorySong
    }
    
    func addSong(){
        categorySong[0].categorySongs?.append(Song(imageUrl: "https://metalcry.com/wp-content/uploads/2018/07/2011-04-18_warcry_alfa_cover_400.jpeg", title:"Warcry", description: "Cobarde"))
    }

}
