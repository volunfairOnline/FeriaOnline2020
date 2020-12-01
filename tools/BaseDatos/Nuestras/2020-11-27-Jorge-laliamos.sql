-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2020 a las 13:01:38
-- Versión del servidor: 5.7.12-log
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laliamos`
--
CREATE DATABASE IF NOT EXISTS `laliamos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `laliamos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

DROP TABLE IF EXISTS `lugar`;
CREATE TABLE `lugar` (
  `id_voluntariado` int(11) NOT NULL,
  `continente_lugar` varchar(20) NOT NULL,
  `pais_lugar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paises a realizar el voluntariado';

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_voluntariado`, `continente_lugar`, `pais_lugar`) VALUES
(1, 'Europa', 'España'),
(2, 'Asia', 'Asia'),
(3, 'Oceanía', 'Oceanía'),
(4, 'America del Sur', 'America del Sur'),
(5, 'Centro America', 'Centro America'),
(6, 'America del Norte', 'America del Norte'),
(7, 'Africa', 'Africa'),
(8, 'Otro', 'Otro'),
(9, 'Europa', 'Madrid'),
(10, 'Europa', 'Europa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ongs`
--

DROP TABLE IF EXISTS `ongs`;
CREATE TABLE `ongs` (
  `id_ong` int(11) NOT NULL,
  `nombre_ong` varchar(100) DEFAULT NULL,
  `descripcion_ong` longtext,
  `voluntariado_ong` longtext,
  `email_ong` varchar(100) DEFAULT NULL,
  `logo_ong` text,
  `web_ong` varchar(75) DEFAULT NULL,
  `facebook_ong` varchar(100) DEFAULT NULL,
  `twitter_ong` varchar(100) DEFAULT NULL,
  `instagram_ong` varchar(100) DEFAULT NULL,
  `linkedin_ong` varchar(100) DEFAULT NULL,
  `video_ong` varchar(100) DEFAULT NULL,
  `fecha_inscripcion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Descripción general de todas las ONGs que participan en Volunfair';

--
-- Volcado de datos para la tabla `ongs`
--

INSERT INTO `ongs` (`id_ong`, `nombre_ong`, `descripcion_ong`, `voluntariado_ong`, `email_ong`, `logo_ong`, `web_ong`, `facebook_ong`, `twitter_ong`, `instagram_ong`, `linkedin_ong`, `video_ong`, `fecha_inscripcion`) VALUES
(1, 'HERMANITAS DE LOS POBRES', 'Asilo de ancianos. Comunidad religiosa que junto a los colaboradores acogemos, acompañamos y cuidamos hasta el termino de sus vidas a personas mayores con pocos recursos económicos… Al ejemplo de Santa Juana Jugan.', 'Acompañar, servir, alegrar... a peronas mayores pobres y/o solas', 'cdadalmagro@alfaexpress.net', 'hermanitas-pobres.png\n', 'https://www.hermanitasdelospobres.es', '', '', '', '', '', '0000-00-00 00:00:00'),
(2, '21Kilómetros', '21Kilómetros es una organización sin ánimo de lucro, cuyo objetivo es dar a conocer entre el sector universitario y profesional las distintas formas de ayudar que hay en Madrid. Para ello colaboramos con numerosos centros, proyectos solidarios y ONGs, organizando distintas actividades y eventos. \n\n¿Algún ejemplo de lo que hacemos? Nuestra actividad se divide en tres grandes sectores: \n1. Voluntariado con gente de la calle y convictos (reparto de cenas por la calle, comedores sociales, partidos de fútbol en la cárcel...).\n2. Voluntariado con niños y enfermos (incluyendo distintos hospitales, asilos, albergues, casas de acogida...).\n3. Adoraciones y coro: organizamos una hora santa al mes para rezar por todos los voluntariados. Y nuestro coro, además de acompañar la oración en estos eventos, participa activamente en los voluntariados y organiza eventos para recaudar fondos cuando son necesarios. \n\n¿Quieres saber más? Consulta nuestra web y pásate por nuestro stand durante Volunfair ?? http://www.21kilometros.org', 'Nuestras actividades son distintas todas las semanas. Por poner algún ejemplo, las actividades que tenemos programadas para el mes de Noviembre son las siguientes:\n- Reparto de cenas por la calle (Madrid centro) y desayunos en la Cañada Real.\n- Acompañamiento a personas de la tercera edad en un centro.\n- Acompañamiento a enfermos del Cottolengo de Madrid. \n- Ayuda a las Misioneras de la Caridad en cuidados de enfermos de SIDA. \n\nUna vez completada la actividad, si los voluntarios quieren comprometerse a asistir a un voluntariado, les pondremos en contacto con las asociaciones que acudan periódicamente. \n', '21kilometros.org@gmail.com', '21_kilometros.jpg\n', 'http://www.21kilometros.org/', '', '', '', '', '', '2020-11-26 11:26:57'),
(3, 'humana', 'Fomentamos el voluntariado internacional con un programa que combina 3 meses de formación en Dinamarca y 6 en terreno (Malawi, Zambia, Mozambique e India)', 'Voluntariado internacional:\n- 3 meses de formación en Dinamarca (cooperación y desarrollo)\n- 6 meses en terreno (Malawi, Zambia, Mozambique e India)\n- 1 mes de promoción en Europa', 'voluntarios@humana-spain.org', 'humana.jpg\n', '', 'https://www.facebook.com/VoluntariosHUMANA/', '', '', '', '', '0000-00-00 00:00:00'),
(4, 'Jóvenes para la Misión', 'Grupo de jóvenes de la delegación de misiones de Madrid.', 'Desde su nacimiento en 2007, somos el grupo de jóvenes de la Delegación de Misiones de Madrid, dentro de las OMP de España, y estamos al servicio de toda la diócesis. Como tal, la naturaleza del grupo se apoya en tres pilares fundamentales:\n\nLa oración. Esta debe ser siempre el centro de cualquier vida cristiana, pues como dice el Papa Francisco: “la oración nos cambia el corazón”. Es por ello que todos los primeros viernes de mes nos unimos a todos los jóvenes de Madrid en la Vigilia de Oración que convoca nuestro arzobispo en la Catedral. Y no solo eso, sino que también es nuestra tarea apoyar a los misioneros que están dando su vida cada día en los territorios de misión. \nLa formación, puesto que es vital no solo recibir la llamada de Dios a la misión o a la animación misionera, sino también formarse y conocer todas las implicaciones de la misma. Para ello tenemos un contacto directo con todos los documentos misioneros de la Iglesia, conocemos la espiritualidad de diferentes congregaciones dedicadas a la misión como las misioneras de la caridad o los javerianos y recibimos formación de nuestro delegado. Y todo esto tiene lugar los segundos viernes de mes por la tarde en la Delegación de Misiones. \nLa animación misionera, que consiste en poner en práctica todo lo aprendido y apoyar a la Delegación en todas sus actividades, pues quien tiene vocación misionera es misionero tanto aquí como en tierra de misión. En estas actividades se encuentra desde el DOMUND hasta Vocaciones Nativas, pasando por Sembradores de Estrellas y muchas otras. Es nuestra misión animar la dimensión misionera de cada cristiano pues “un cristiano es misionero desde el bautismo”.\n\nEstamos enamorados de la misión y este es el sitio al que Dios nos llama ahora para ir descubriendo nuestra vocación.\nEstamos al servicio de toda la diócesis, especialmente de los cristianos que quieren conocer la misión, y siempre estás invitado a escribirnos, ponerte en contacto con nosotros o venir una tarde al grupo a conocer el grupo de jóvenes de la Delegación.', 'pablo.eldeares@gmail.com', 'jovenes-mision.jpg\n', '', 'https://es-es.facebook.com/JovenesparalaMision', '', '', '', 'https://youtu.be/ljRRzF3cvOY', '2020-11-26 11:29:00'),
(5, 'Mater Salvatoris de Kalalé', 'Colegio en kalalé (Benin)', 'Voluntariado en el colegio de Kalalé, dando clases, apoyo', 'info.kalale@matersalvatoris.org', 'mater-salvatoris.png\n', 'http://kalale.matersalvatoris.org/', '', '', 'www.instagram.com/colegiomatersalvatoriskalale', '', '', '2020-11-26 11:30:40'),
(6, 'Gentinosina Social', 'Asociación sin ánimo de lucro para la cooperación y la acción social de manera local y global. Combate la desigualdad y utiliza el periodismo como arma para sensibilizar a la sociedad sobre las injusticias en nuestro entorno.', '- Voluntariado de verano en Burkina Faso con más de 500 alumnos de escuelas rurales al sur del país. \n- Voluntariado virtual y presencial en España (Madrid y Cáceres)\n- Voluntariado en el hogar Luceros del Amanecer en Nicaragua, con 120 niños y niñas de la ciudad de Camoapa.\n- Voluntariado en la escuela Francisco González Bocanegra en el estado de Sinaloa (México). Oferta de voluntariado pendiente de definir.', 'jhm@gentinosina.org', 'gentinosina-social.png\n', '', '@Gentinosina', '', '', '', '', '0000-00-00 00:00:00'),
(7, 'GHO VOLUNTARIADO INTERNACIONAL', 'GHO (Grow Helping Others) nace de la necesidad de muchas personas de vivir experiencias inolvidables participando en acciones de voluntariado, contando con un apoyo diario emocional y logístico, que les asegure y les informe sobre la realidad de la experiencia, con el objetivo de crecer personalmente ayudando a otros.', 'Programas de voluntariado desde 2 semanas durante todo el año en:\n\nGhana\n-Proyecto orfanato\n-Proyecto escuela\n-Proyecto salud\n-Proyecto construcción\n\nIndia\n-Proyecto orfanato\n-Proyecto salud\n\nMarruecos\n-Proyecto infantil\n-Proyecto construcción', 'info@growhelpingothers.com', 'gho.png\n', '', '@ghovoluntariado', '', '', '', '', '0000-00-00 00:00:00'),
(8, 'ASPRODALBA', 'Asociación para la promoción de las personas con discapacidad intelectual del Levante Almeriense.', 'Proyecto de voluntariado para jovenes y de todas las edades en su tiempo de ocio para compartir y dar apoyos a personas cin discapacidad intelectual', 'voluntariadoasprodalba@gmail.com', 'asprodalba.jpg\n', '', 'Facebook: ASPRODALBA', '', '', '', '', '0000-00-00 00:00:00'),
(9, 'Fundación Amoverse', 'La Fundación Amoverse nace en el año 2001 en el barrio madrileño del Pozo del Tío Raimundo (Vallecas) con el fin de acompañar a los niños/as, adolescentes, jóvenes y sus familias en su inserción social y laboral, impulsando oportunidades de aprendizaje, crecimiento e integración. Hoy contamos con diferentes centros en Vallecas y Tetuan, Madrid, desde donde llevamos a cabo programas integrales de Acompañamiento Famliar, de Intervención Socio-educativa e Intervención socio-laboral.', 'Atendiendo a las necesidades familiares compartidas y específicas de cada barrio, se quiere ofrecer un espacio donde compartir, crecer y aprender unos/as de otros/as. A través del vínculo se va construyendo la propia historia con las fortalezas y dificultades de cada uno atendiendo al área emocional, cognitiva, educativa y social. \n\nTodo esto se lleva a cabo en espacios compartidos a través de actividades, donde convivir, relacionarse e integrarse en el contexto, de manera participativa contando con personas voluntarias, para la búsqueda de la justicia y el cambio social. Sin el voluntariado este sueño no sería posible. \n\nDurante el curso escolar trabajamos con los menores por las tardes desde el espacio de aprendizaje (actividades donde poder desarrollar las competencias que permitan al menor adquirir los conocimientos requeridos a su edad y poder despertar el interés y la curiosidad por aprender) y el espacio de crecimiento (actividades que busquen tanto el autoconocimiento y crecimiento personal como la búsqueda de disfrute y crecimiento a través del juego, las actividades manuales y la relación con los compañeros/as). Durante el verano se realizan los campamentos En función de la edad las actividades se adaptan así que si estás interesado estaremos encantados de ampliarte la información. \n\nAdemas puedes ser voluntario en el área de formación y acompañamiento laboral con jóvenes y adultos y dar apoyo al equipo técnico en gestión, comunicación...', 'voluntariado@fundacionamoverse.org', 'amoverse.jpg\n', '', 'https://fundacionamoverse.org/', '', '', '', '', '0000-00-00 00:00:00'),
(10, 'Misión País España', '\nMisión País es un proyecto de jóvenes\nmisionero que quiere cambiar España, dándonos a los demás. Nuestra Misión es llevar a Dios a todo el mundo, empezando por los pequeños pueblos de España.', 'Actualmente, tenemos 10 misiones abiertas en 10 pueblos distintos de España!! La misión consiste en ir durante una semana a un pueblo español a misionar, compartir la fe, ayudar, visitar enfermos, hacer voluntariado, dar alegría al pueblo...', 'antoniobecu@gmail.com', 'mision_pais.jpg\n', '', 'Instagram: @misionpaisesp o en la web www.misionpais.es', '', '', '', '', '0000-00-00 00:00:00'),
(11, 'AMIGOS DE SIERRA LEONA', 'Nuestro objetivo es proporcionar asistencia escolar, sanitaria y alimentaria a los niños huérfanos de Sierra Leona, así cómo participar y contribuir en la mejora de las condiciones de vida de sus habitantes.\n\nPor eso, promovemos desde la base y a píe de campo la educación, la salud y la seguridad alimentaria, además de la gestión de becas y el envío de suministros médicos.', 'El proyecto principal es participar directamente, in situ, en la educación y enseñanza de los niños de la escuela-orfanato de Ma-Tindi, Sierra Leona. También, desde septiembre de 2018, tenemos un centro de salud al lado de la escuela, donde los estudiantes también pueden prestar su ayuda.', 'salonetiti@yahoo.com', 'amigos-sierra-leona.png\n', '', 'Email: info@ amigosdesierraleona.com www.amigosdesierraleona.com Facebook: Amigos de Sierra Leona-AD', '', '', '', '', '0000-00-00 00:00:00'),
(12, 'Fundación Manantial', 'Fundación Manantial es una entidad sin ánimo de lucro\nformada en 1995 por asociaciones de familiares para mejorar la atención social y sanitaria de las personas con problemas de salud mental.\nNuestro trabajo está orientado a la recuperación de las personas y pretende cubrir sus necesidades de atención social, empleo, tutela y reinserción desde el ámbito penitenciario. Impulsamos y ponemos en marcha iniciativas\nde prevención y atención temprana, sensibilización, asistenciales y psicoterapéuticas que facilitan la incorporación y participación real en la sociedad de las personas con problemas de salud mental.', 'Apoyo en ocio y tiempo Libre.\nAcompañamiento afectivo.\nApoyo en talleres específicos( música, teatro, cómic, baile, robótica ,etc...)', 'mdiaz@fundacionmanantial.org', 'fund-manantial.png\n', '', 'https://www.facebook.com/FundacionManantial https://twitter.com/VoluntariosFM https://www.instagram.', '', '', '', '', '0000-00-00 00:00:00'),
(13, 'ASOCIACION CULTURAL NORTE JOVEN', 'La MISIÓN de Norte Joven es promover el desarrollo personal y la integración sociolaboral de personas en situación de desventaja social a través de su formación, del acceso al empleo y de la sensibilización de la sociedad', 'somos una escuela de segunda oportunidad para personas que han abandonado el sistema escolar, dándoles una formación cultural básica y en un oficio. Llevamos más de 30 años cambiando proyectos de vida', 'voluntariado@nortejoven.org', 'norte-joven.png\n', '', 'www.nortejoven.org', '', '', '', '', '0000-00-00 00:00:00'),
(14, 'ClaseaTe', 'Organizamos ocio solidario', 'Los universitarios, asi como cualquier otro voluntario, puede participar como profe impartiendo una clase suelta de la actividad aue elija, recaudando fondos para la ong que desee, asi como asistiendo como participante a cualquiera de nuestros talleres, con su donativo que confirmaría la inscripción al taller. También puedes participar como parte del equipo organizativo de ClaseaTe!', 'Maite.iturralde@claseate.com', 'claseate.jpg\n', '', 'Facebook y twitter: ClaseaTe', '', '', '', '', '0000-00-00 00:00:00'),
(15, 'KUBUKA', 'Nuestra misión es crear un desarrollo sostenible en las comunidades más vulnerables de Kenia y Zambia, centrándonos en el emprendimiento y en la educación como motores de cambio, apoyando proyectos que nazcan y perduren gracias al esfuerzo y empoderamiento de la comunidad beneficiaria.', 'Nuestros proyectos se centran en educación, emprendimiento e inclusión social; casas de acogida, colegios, proyectos deportivos, centros de tutorías, plantas de reciclaje, microcréditos, etc.', 'alejandracgil@kubuka.org', 'kubuka.png\n', '', 'Instagram, facebook, twitter y youtube: KUBUKA', '', '', '', '', '0000-00-00 00:00:00'),
(16, 'Misioneros Javerianos y Franciscanas Misioneras de María', 'Misioneros Javerianos, congregación cuya única finalidad es la misión Ad Gentes. Somos Franciscanas Misioneras de María, una congregación que es de diversas naciones y culturas, en un mundo fragmentado, optamos por vivir juntas. Como misioneros y misioneras queremos manifestar el rostro de Dios siendo una presencia que humanice al lado de los que sufren y son abandonados. Nos comprometemos con otros en el cuidado de la creación y al servicio de la paz, de la justicia, allí donde sea más necesario.', 'Campo de trabajo con inmigrantes del 11 al 24 de julio. Queremos vivir la fraternidad con nuestros hermanos y hermanas inmigrantes y ensanchar nuestro corazón a otras realidades, creciendo y formándonos como grupo de fe. Abrazar con nuestras vidas, como Jesús, la fragilidad y vulnerabilidad del inmigrante que sufre la indiferencia del distanciamiento de nuestros corazones. Acercamiento a otras religiones con el deseo de crear puentes y estrechar lazos.\n\nEn Tetuán, Marruecos para los campos de Inmigrantes es dar cariño al inmigrante y así ensanchar el propio corazón. También se descubre el trabajo de la Iglesia en minoría en medio musulmán y una visión del inmigrante fuera del propio país. Se reflexiona, se reza y se comparte.\n\nTenemos otras actividades en el Sur de Marruecos para finales de julio y principios de agosto y quizás algo que se realice en Camerún o Chad que está en proyecto para agosto 2020\n', 'madridcarab@javerianos.org y rolandoruizduran@yahoo.fr', 'fmm-javieranos.jpg\n', '', 'Facebook:Misioneros.javerianos', '', '', '', '', '0000-00-00 00:00:00'),
(17, 'FUTURE FOR AFRICA', 'Future for Africa is a Ghanaian NGO working at a local level to promote and create an enabling future of hope for children in economically deprived using volunteering to provide and improve access to education, health, water and sanitation in rural communities in northern Ghana.', '- Teaching: Teach in partner schools on subjects such as mathematics, English, physical education, religious and moral education, ICT and Science. Under the supervision of locally trained teachers. Volunteers need not be qualified teachers to do so basic knowledge is sufficient for training the community whilst higher heights will be achieved at due cause.\n- Childcare: working with children that are deprived as a result of bad parenting or not having parents at all, volunteers will be able to have direct contact and help in catering for their needs to enable them feel at home and loved until they are integrated into the society.\n- Sports: our sport projects include football (soccer) which is the most common game in our world, basketball and handball volunteers with such special skill will help in the personal development of young sports men and women in the society.\n- Health care & sanitation: we will coordinate with some health centre and support from the Ghana Health Service to assist in giving medical needs to deprived and sick fellows who need medical attention \n- Construction: Working to improve the local infrastructure, educational facilities and Helping build our proposed training center and shelter. As a member of the construction project. Focusing on improving existing facilities and building on our land. From painting classrooms and creating board displays and plastering.', 'inesrevgar@gmail.com', 'future4africa.png\n', '', 'Website: www.future4afrika.org Instagram: @future4africa Twitter: @future4africagh Facebook: @future', '', '', '', '', '0000-00-00 00:00:00'),
(18, 'Asociación Pitote', 'Entidad sin animo de lucro que realiza actividades de ocio, deporte, educación y cultura de forma inclusiva.', 'Proyecto de deporte y de ocio donde realizamos diferentes actividades inclusivas en estos ámbitos. Estas actividades se realizan los sábados, gracias a las mismas los participantes se desarrollan a través de la interacción con personas con diferentes capacidades.\nTambién contamos con una semana de campamento, normalmente la primera semana de septiembre, y un campamento urbano la última semana de junio.', 'asociacionpitote@gmail.com', 'pitote.png\n', '', 'Facebook: Asociación Pitote, Twitter: @asoc_pitote, instagram: @asociacion_pitote, youtube: Asociaci', '', '', '', '', '0000-00-00 00:00:00'),
(19, 'AFS Intercultura España', 'AFS Intercultura es una organización educativa, no lucrativa, sin vinculaciones religiosas o políticas, y empeñada desde hace más de sesenta años en definir, fortalecer y generar aprendizajes en el campo de la interculturalidad. Nuestros programas de inmersión cultural dirigidos a alumnado y profesorado de más de sesenta países nos avalan en cada paso dado hasta el día de hoy.\nAFS Intercultura promueve la movilidad internacional de estudiantes y profesorado en experiencias de inmersión cultural intensivas (dos a seis meses) o anuales, en países como Sudáfrica, Alemania, Japón, Estados Unidos, Nueva Zelanda, Canadá o Francia entre otros destinos. Durante ese período los jóvenes acuden a clase en su nuevo instituto como un alumno más, y el profesorado se puede acercar durante sus vacaciones de verano a otras experiencias educativas en diferentes contextos culturales. \nPor otro lado, todos los años recibimos la visita de estudiantes enviados por nuestros socios internacionales de decenas de países que como los anteriores, estarán matriculados en centros españoles, enseñando y aprendiendo en su particular experiencia de inmersión cultural. En todo caso, para jóvenes participantes de envío o recepción, la experiencia sin duda cambiará sus vidas y les hará ganar en autonomía y autoestima, descubriendo su potencial como ciudadanos y ciudadanas globales. \n\n\nAFS Intercultura forma parte de AFS Intercultural Programs, que tiene su sede en Nueva York (EEUU) y goza de status consultivo ante el Consejo Económico y Social (ECOSOC) de la ONU (Organización de Naciones Unidas). Es miembro fundador de la Federación Europea para el Aprendizaje Intercultural (EFIL por sus siglas en inglés). EFIL agrupa a todas las entidades de AFS (28) presentes en los diferentes países europeos junto con Egipto, Túnez y Turquía. Esta organización, con sede en Bruselas, colabora con la Unión Europea en programas de educación intercultural, tiene rango consultivo ante la Organización de Naciones Unidas para la Educación, la Ciencia y la Cultura (UNESCO) y el Consejo de Europa. Además es miembro del European Youth Forum, una organización internacional creada por los consejos nacionales de la juventud y organizaciones no gubernamentales juveniles internacionales para representar los intereses de los/as jóvenes de toda Europa.\nAFS Intercultura pertenece al Consejo de la Juventud de España y está reconocida por el INJUVE (Instituto de la Juventud – Ministerio de Sanidad, Consumo y Bienestar Social) como entidad prestadora de servicios a la juventud.', 'Área de atención al Estudiante y a las Familias: \n• Tutorías\n• Orientaciones\n\nÁrea de atención a los centros educativos:\n• Acompañamiento\n• Acciones de sensibilización.\n\n\n\nÁrea de sensibilización y promoción:\n• Promoción de AFS Intercultura.\n• Promoción de los programas de AFS Intercultura.\n• Campañas de familias para acogimiento.\n• Campañas de voluntarios/as.\n\n\nÁrea de selección:\n• Entrevistas a candidatos de envío.\n• Entrevistas a familias de acogida.\n• Realización de jornadas de selección.\n', 'cristina.mesa@afs.org', 'afs-intercultura.png\n', '', 'Instagram:afsintercultura_Esp y Facebook:AfsInterculturaEspana', '', '', '', '', '0000-00-00 00:00:00'),
(20, 'Viajes Tumaini', 'Tumaini es una entidad sin ánimo de lucro registrada desde el año 2013 que facilita la realización de viajes solidarios y voluntariado internacional para empoderar a pequeñas ONG de África, Asia y América Latina. Trabajamos en 8 países diferentes y formamos y acompañamos a personas que quieren colaborar para construir un mundo más justo y solidario. Creemos en los viajes como herramienta de sensibilización, para abrir mentes y cambiar realidades.', 'Trabajamos con 18 proyectos de diferentes ámbitos (educativos, medio ambiente, centros de rescate de animales) en India, Nepal, Tailandia, Camboya, Indonesia, Kenia, Perú y Bolivia', 'info@viajestumaini.org', 'viajes-tuamini.jpg\n', '', 'Facebook: viajessolidariostumaini, Twitter:ViajesTumaini y Instagram:viajestumaini\n', '', '', '', '', '0000-00-00 00:00:00'),
(21, 'Sociedad de Misiones Africanas', 'Solidarios es una asociación de voluntarios sociales con más de 30 años de trabajo reconocido con diferentes colectivos en exclusión social: personas sin hogar, personas mayores, con diagnóstico de enfermedad mental, en prisiones y en hospitales. Está Declarada de Utilidad Pública.', 'Todo el voluntariado (Aulas de cultura en prisiones / Ocio con personas con enfermedad mental / acompañamiento a mayores / atención a personas sin hogar / visitas hospitalarias)', 'corinamora@solidarios.org.es', '', '', 'Facebook, Twitter y Instagram: @solidarios_es', '', '', '', '', '0000-00-00 00:00:00'),
(22, 'Asociación BLUA', 'BLUA voluntariado, es una organización sin ánimo de lucro cuyo objetivo principal es la sensibilización hacia cuestiones ambientales impulsando la preservación de la biodiversidad de nuestro planeta por el bienestar de las generaciones futuras. Ofrece voluntariados internacionales de corta o larga estancia en proyectos de protección de fauna salvaje, conservación, educación medioambiental y desarrollo sostenible.', 'Blua conecta a voluntarios de cualquier parte del mundo con pequeñas y grandes ONG, Fundaciones, Reservas y Santuarios que trabajan en la protección de fauna salvaje, la conservación y educación medioambiental y el desarrollo sostenible seleccionados por su seriedad, ética y compromiso con el planeta. Los proyectos de voluntariado tienen una participación mínima de 1 o 2 semanas y algunos dan la oportunidad de realizar prácticas o desarrollar investigaciones o trabajos de grado.', 'info@bluavoluntariado.org', 'blua.jpg\n', '', 'Facebook e Instagram: bluavoluntariado.', '', '', '', '', '0000-00-00 00:00:00'),
(23, 'HOGAR D.ORIONE', 'Centro residencial para personas adultas con discapacidad intelectual y alto nivel de dependencia.', 'Colonias de Cercedilla', 'marhernandez@orionistas.org', 'don_orione.jpg\n', '', 'Instagram:hogardonorione y Web: http://hogardonorione.org/', '', '', '', '', '0000-00-00 00:00:00'),
(24, 'AMAQTEDU', 'Voluntariado con personas sin hogar y en riesgo de exclusión por medio del arte. Actualmente, trabajando y desarrollando proyectos con Cáritas', 'Dos proyectos con Cáritas: Urgel y Laguna. En ambos centros, tenemos sesiones semanales: en Urgel son viernes y domingo; y en Laguna los viernes. \nPor otro lado, nos gustaría aumentar los talleres desarrollados y así, poder trabajar en más centros de Cáritas y con otras instituciones como Geranios.', 'javiergbalbin@gmail.com', 'amaqtedu.jpg\n', '', 'Instagram: @amaqtedu', '', '', '', '', '0000-00-00 00:00:00'),
(25, 'Youth, Wake-Up!', 'Somos un grupo de jóvenes comprometidos, profesionales y voluntarios que trabajamos en la transformación social de colectivos desfavorecidos en zonas de conflicto, a través de la involucración de los jóvenes en proyectos de cooperación y acción social. Los jóvenes locales se convierten así en los promotores de un cambio real en sus comunidades. \n\nA través de la colaboración intercultural entre jóvenes y entidades locales llevamos a cabo múltiples proyectos que contribuyen a la reducción de las desigualdades derivadas del contexto social, político y económico. Nuestras líneas de acción se centran en: el fomento de la paz y del voluntariado local, sanidad, vivienda, educación y ocio. \n\nGracias al trabajo de nuestros voluntarios llegamos a colectivos especialmente desfavorecidos en estas zonas de conflicto: jóvenes y niños en riesgo de exclusión social o con diversidad funcional, personas mayores sin recursos sociales o financieros, familias vulnerables y personas con enfermedades mentales.', 'Desde Youth, Wake-Up! ofrecemos dos programas de voluntariado:\n- Un programa de Larga Estancia- de 3 meses de duración, durante los meses de septiembre a junio, donde desarrollamos los proyectos mencionados anteriormente.\n- Un programa de verano- de 1 mes de duración, julio o agosto completo. Durante los meses de verano desarrollamos 2 summer camps además de dar apoyo a los proyectos desarrollados a lo largo del año.', 'volunteers@youthwakeup.org', 'youth-wake-up.png\n', '', 'Instagram: @youthwup Facebook: @youtwup Web: www.youthwakeup.org', '', '', '', '', '0000-00-00 00:00:00'),
(26, 'Cooperatour', 'ONGd especializada en la organización de voluntariados internacionales y viajes solidarios.', 'Proyectos educativos, medioambientales y sanitarios en Asia, Latinoamérica y África.', 'david@cooperatour.org', 'cooperatour.jpeg\n', '', 'Instagram, Facebook, Youtube, Pinterest: Cooperatour', '', '', '', '', '0000-00-00 00:00:00'),
(27, 'FUNDACIÓN HOGAR SÍ (RAIS)', 'Acompañamiento a la inserción sociolaboral de personas sin hogar', 'Proyectos de voluntariado en distintos proyectos con personas sin hogar (pisos semitutelados, pisos housing first, housing led, centro de día, etc)', 'sara.martinp@hogarsi.org', '', '', 'Web: https://hogarsi.org/', '', '', '', '', '0000-00-00 00:00:00'),
(28, 'AFAIJ Asociación para la Formación y las Actividades Interculturales para la Juventud', 'Voluntariado internacional, programa voluntariado europeo (Servicio Voluntario Europeo y Cuerpo Europeo de Solidaridad).', 'Voluntariado de distintos proyectos sociales o culturales en el extranjero de corta o larga duración', 'sve@afaij.org', 'afaij.gif\n', '', 'Facebook:AFAIJ-Voluntariado Internacional, Instagram: afaijspain y Web: https://afaij.org/', '', '', '', '', '0000-00-00 00:00:00'),
(29, 'ASOCIACIÓN SÍNDROME 22q11', 'La Asociación Síndrome 22q11, es una entidad sin ánimo de lucro constituida en el año 2011, por un grupo de seis familias apoyadas por el Departamento de Genética del Hospital Universitario La Paz, que, ante la poca información y conocimiento sobre el Síndrome 22q11.2, se unen con el objetivo de sensibilizar y visualizar socialmente su existencia, ofrecer apoyo y acompañamiento social y luchar por los derechos e intereses de las familias y afectados.\n\nEn el desarrollo de sus actividades la figura del voluntariado social es una pieza clave en la atención a estas personas, de ahí que la Asociación siempre muestre gran interés en participar de las acciones que de ellas y para ellas derive.\n\nEn definitiva, es un grupo humano abierto y participativo, que pretende crear un futuro mejor y más solidario para todas las familias y afectados por el Síndrome 22q11.2.', 'La Asociación realiza proyectos a través de los que la figura del voluntariado es un valor añadido en las actividades, especialmente la de los más pequeños.\n- Respiro familiar: proyecto de ocio inclusivo destinado a diferentes franjas de edad. Los niños afectados por el Síndrome 22q11 tienen dificultades para relacionarse al carecer de habilidades sociales. Este espacio pretende ser un escenario idóneo para que estos niños y niñas tengan un espacio dedicado a la diversión y a la amistad. Está abierto a afectados, hermanos, primos, amigos del cole y al barrio.\n- Café para familias: actividades de ocio dirigidas mientras lo padres tienen un espacio dónde compartir experiencias y miedos. Este espacio para las familias es muy importante ya que entre ellos se ofrecen esa parte de entendimiento emocional dónde el profesional no siempre puede llegar.', 'Trabajadorsocial@22q.es', '22q.jpg\n', '', 'Facebook: 22q.es, Twitter: @22q_es y  Web: http://www.22q.es', '', '', '', '', '0000-00-00 00:00:00'),
(30, 'Cooperación Internacional', 'Asociación que busca formar a la gente joven en una cultura de la solidaridad', 'Programa de voluntariado estable con distintos colectivos y Friday Revolution', 'gvillalon@ciong.org', 'cooperacion-iternacional.png\n', '', 'twitter:@cooperacion, Instagram: cooperacion_internacional_ong  y Youtube: Cooperación Internacional', '', '', '', '', '0000-00-00 00:00:00'),
(31, 'Jardín de Amor España', 'Proyecto guatemalteco que ofrece un servicio educativo, sanitario y alimentario a 140 niñxs en situación extrema de pobreza en Santa María de Jesús.', 'Finalización del centro de Secundaria\nAmpliación del centro de educación de primaria \nApoyo educativo en las aulas', 'paula_96_@hotmail.es', 'jardin-de-amor.png\n', '', '@jardin.de.amor', '', '', '', '', '0000-00-00 00:00:00'),
(32, 'Fundación Manuel María Vicuña', 'Promovemos el desarrollo humano de niñas y niños, jóvenes y principalmente mujeres en situación de vulnerabilidad socioeconómica, a través de una educación integral de calidad que actúa como motor de cambio social.', 'Proyectos de cooperación internacional Norte - Sur, Sur- Norte y Europa', 'funmmv.social@gmail.com', 'fmmv.jpg\n', '', 'Facebook, Instagram: Fundación Manuel María Vicuña', '', '', '', '', '0000-00-00 00:00:00'),
(33, 'Asociación Bokatas', 'Acompañamiento a personas sin hogar', '1. Realizar ruta de calle de acompañamiento a personas sin hogar una vez a la semana. \n2. Acompañamiento en el centro Tandem de Bokatas\n3. Charlas y talleres en colegios y otras instituciones con el objetivo de sensibilizar sobre el sinhogarismo.', 'Irenefl@msn.com', 'bokatas.png\n', '', 'Facebook e instagram: Asociación Bokatas', '', '', '', '', '0000-00-00 00:00:00'),
(34, 'Sociedad de Misiones Africanas', 'Sacerdotes y laicos comprometidos con la Primera Evangelización y el desarrollo de los pueblos de África que aún no conocen a Jesucristo y los más abandonados.', 'Conocimiento e integración en la vida de los pueblos de África y trabajo en apoyo a niños y acompañamiento a enfermos. Compartir con ellos la fe en Jesucristo que nos mueve a ser misioneros.', 'asekovis@hotmail.com', '', '', 'Facebook, Instagram:Sociedad de Misiones Africanas', '', '', '', '', '0000-00-00 00:00:00'),
(35, 'Fundación Soñar Despierto', 'Soñar Despierto es una Fundación con presencia en Barcelona, Madrid, Valencia y Sevilla, que desde hace más de una década colabora con los centros de acogida donde viven menores que, por diversos motivos, han tenido que ser separados de sus familias y han pasado a ser tutelados por el Estado.\n\nEl objetivo principal de Soñar Despierto radica en conseguir que todos ellos cuenten con las mismas oportunidades que el resto de niños de su edad, independientemente de las circunstancias que les han tocado vivir.\n\nNuestra misión es acompañar y apoyar a los menores residentes en centros de acogida, centros abiertos y centros residenciales procedentes de ambientes marginales y familias desestructuradas, desde el momento de su entrada el centro hasta que alcanzan la autonomía.\n\nY además, fomentar la participación social de la ciudadanía a través de acciones como el voluntariado implicado y responsable.', 'Los programas de voluntariado en Soñar Despierto son:\n\n- Educar Sonrisas, en el que un voluntario acude al centro de acogida a ayudar siempre al mismo niño/grupo de niños con los deberes del colegio o a mejorar en una asignatura en concreto.\n\nLa mayoría de los menores residentes en estos centros presentan un gran retraso en los estudios que, a medida que crecen, limita sus posibilidades a la hora de dar el salto a la vida adulta. Desde Soñar Despierto buscamos que los niños encuentren en los voluntarios un referente y una figura de apoyo que les acompañe a la hora de sacar adelante sus estudios.\n\n- Amigos Para Siempre, en el que un voluntario acude a la residencia durante el fin de semana a disfrutar de un tiempo de ocio con un grupo de niños (salir a merendar, ir a jugar al parque, dar un paseo...).\n\nPese a que los menores están perfectamente atendidos en los centros, presentan muchas veces grandes carencias afectivas y una serie de limitaciones a la hora de disfrutar del tiempo de ocio. En Soñar Despierto creemos en la importancia de que un niño juegue y se divierta, para ello, confiamos plenamente en la capacidad de nuestros voluntarios para hacerles disfrutar y sentirse especiales durante unas horas a la semana.', 's.dejuana@sdespierto.es', 'sonar-despierto.png\n', '', 'https://www.instagram.com/sdespiertomadrid/', '', '', '', '', '0000-00-00 00:00:00'),
(36, 'Religiosos Camilos', 'Dedicados a la humanización de la salud, cuidamos y enseñamos a cuidar', 'Voluntariado con personas mayores, final de la vida, acompañamiento en demencia, posibilidad de campo de trabajo y voluntariado internaconal', 'roberto@camilos.es', 'religiosos-camilos.jpg\n', '', 'https://www.camilos.es o en facebook y twiter: Religiosos Camilos', '', '', '', '', '0000-00-00 00:00:00'),
(37, 'Campos Misioneros de Trabajo', 'Proyecto de jóvenes que nace en la Parroquia de Santa María de Majadahonda. Los jóvenes que forman parte de CMT vienen a vivir una experiencia de misión junto a los misioneros de la caridad.', 'Ofrece una experiencia de misión junto a las Misioneras de la Caridad en verano en diferentes detinos, este último año estuvimos en Tánger, Barcelona, Sabadell, Lisboa y Zurich.\nDurante el año hay reuniones mensuales para formarse antes de la experiencia de verano.\nViviendo siempre tres pilares Grupo, Trabajo y Oración.', 'camposmisionerosdetrabajo@yahoo.es', 'cmt.jpg\n', '', 'camposmisionerosdetrabajo@yahoo.es', '', '', '', '', '0000-00-00 00:00:00'),
(38, 'Misioneras de la Caridad', 'Orden religiosa fundada por Madre Teresa de Calcuta.', 'A sus casas se puede ir como voluntarios tanto a las de Madrid como a las de el resto del mundo.', 'camposmisionerosdetrabajo@yahoo.es', 'misioneras_caridad.png\n', '', 'camposmisionerosdetrabajo@yahoo.es', '', '', '', '', '0000-00-00 00:00:00'),
(39, 'Fundación Síndrome de Down de Madrid (Down Madrid)', 'Desde Down Madrid trabajamos por mejorar la calidad de vida de las personas con síndrome de Down u otras discapacidades intelectuales y sus familias.', 'Voluntariado en diferentes actividades ocio, deporte, centro ocupacional, TIC, viajes y campamentos urbanos, entre otros.', 'diliana.rodriguez@downmadrid.org', '', '', 'Twiteer, Facebook. Instagram. Linkedin', '', '', '', '', '0000-00-00 00:00:00'),
(40, 'MasFuturo', 'Ayuda sin límite a madres en exclusión social y a seguir adelante con su embarazo', 'Recogida de alimentos, clases particulares, clases profesionales', 'A.masfuturo@gmail.com', 'mas-futuro.jpg\n', '', '@masfuturo, #ResjuanPabloII', '', '', '', '', '0000-00-00 00:00:00'),
(41, 'ASOCIACIÓN REDMADRE', 'La Asociación REDMADRE ofrece una ayuda real y concreta a todas aquellas madres que, por cualquier causa o circunstancia se encuentran solas ante un embarazo.', 'Voluntariado en nuestros almacenes y recogida de donaciones, además por supuesto de transmitir nuestro mensaje donde se encuentren.', 'comunicacion@redmadremadrid.es', 'red-madre.jpg\n', '', 'Instagram y Facebook:ASOCIACIÓN REDMADRE', '', '', '', '', '0000-00-00 00:00:00'),
(42, 'TECHO INTERNACIONAL', 'Buscamos la superación de la pobreza extrema en Latinoamérica desde el trabajo en conjunto entre jóvenes voluntario y pobladores de los asentamientos a través de la construcción de viviendas de emergencia.', 'Desde la coordinación de ares de construcción, voluntariado, fondos y cooperación, hasta voluntario en cualquiera de nuestras areas tanto comerciales como sociales. El liderazgo facilitador es nuestro goal standard en cuanto a voluntariado se trata.', 'jose.pandares@techo.org', '', '', '@techo_eu', '', '', '', '', '0000-00-00 00:00:00'),
(43, 'CARITAS MADRID UNIVERSITARIA', 'Te lo cuento en persona ;)', '¿No los conoces.....?', 'p.enriquerueda@gmail.com', 'caritas.jpg\n', '', 'https://twitter.com/CaritasDPUMad ; https://www.instagram.com/caritasmadriduniversitaria/', '', '', '', '', '0000-00-00 00:00:00'),
(44, 'Inakuwa Asociación', 'Inakuwa es un proyecto de cooperación en el que estudiantes y profesionales de todas las disciplinas se unen para lograr el desarrollo económico y social de comunidades sin recursos a través de lo único que se necesita para cambiar el mundo: la educación. Lo hacemos a través de un modelo integral de desarrollo donde cooperan cursos educativos, formación de formadores, trabajo con autoridades locales y una importante alianza con la universidad.', 'Los universitarios podrán formar parte de nuestros proyectos de cooperación, que tienen lugar en Rau (Moshi, Tanzania) y en Madrid, como voluntarios-cooperantes que desarrollarán un curso/taller, una investigación o un trabajo de formación a formadores o a autoridades locales. También podrán colaborar de manera puntual con la asociación y con el sustento logístico de la misma.', 'mariacaso98@hotmail.es', 'inakuwa.png\n', '', 'Instagram y facebook: @inakuwa_official y correo: colabora@inakuwa.org', '', '', '', '', '0000-00-00 00:00:00'),
(45, 'ASOCIACIÓN TAOUS (ASOT)', 'Asociación Taous (ASOT) es un programa de voluntariado de bajo coste\ndedicado a proporcionar a sus participantes la oportunidad de desarrollar\ndistintos proyectos en el Marruecos más auténtico.\nASOT surge a partir de la colaboración entre un miembro de la asociación\namericana Peace Corps Volunteer y los jóvenes marroquíes que residen en la\nzona donde se realiza el programa.', 'Nuestro proyecto o labor consiste entre otros valores, en:\nFacilitar el entretenimiento de los niños y jóvenes de Boudnib y alrededores, a\ntravés de actividades guiadas que promuevan un uso sano y productivo del ocio\ny tiempo libre.\nAportar conocimientos de idiomas (español, inglés, francés…), a fin de que esto\nfavorezca las oportunidades laborales y la calidad de vida de los chicos.\nElaborar proyectos educativos basados en distintos ámbitos (educación para la\nsalud, medio ambiente, sostenibilidad, convivencia, paz y\ndesarrollo…) que favorezcan el desarrollo personal de los jóvenes.\nFavorecer la educación en valores, los cuales son comunes para todos,\nindependientemente de nuestra cultura, religión o país. De este modo,\ntrabajaremos la igualdad, el respeto, el compañerismo, la tolerancia, la\nsolidaridad, la cortesía…etc.\nConcienciar al voluntario de que, el turismo responsable, la ayuda humanitaria y\nla cooperación internacional son las mejores vías para viajar y conocer el\nmundo, al mismo tiempo que permiten abordar desafíos comunes.', 'Taousaso@gmail.com', 'taous.jpg\n', '', 'Facebook (Asociación Taous-Asot); Twitter (@asociacionTaous); Instagram (@asociacionTaous); Website ', '', '', '', '', '0000-00-00 00:00:00'),
(46, 'ONGAWA', 'ONGAWA Ingeniería para el Desarrollo Humano es una ONG (Organización No Gubernamental) de Desarrollo que tiene como misión poner la tecnología al servicio del desarrollo humano para construir una sociedad más justa y solidaria. Luchamos para acabar con la pobreza y las desigualdades, especialmente las de género, y ponemos especial atención a los colectivos más vulnerables. Nos comprometemos con procesos de desarrollo que consigan resultados sostenibles en el tiempo y trabajamos por la realización plena de los derechos humanos, especialmente los de agua y saneamiento. En España, impulsamos una ciudadanía global, formada por personas comprometidas que no toleren la pobreza, con un pie en la calle y otro en las redes y aspiramos a contribuir a una universidad comprometida con el desarrollo humano sostenible.', 'Nuestra propuesta en la Universidad se presenta bajo el programa Global Challenge: \n- QUÉ ES: programa de voluntariado universitario en el que los estudiantes son protagonistas y por el que han pasado más de 3.000 alumnos/as\n- DESDE CUÁNDO El programa lleva 5 años en la UPM, universidad pionera en impulsarlo. Durante este curso se ha extendido a diez Universidades públicas de España. \n- CUÁL ES EL OBJETIVO: fortalecer las capacidades del alumnado para contribuir a un mundo más justo y sostenible, empezando por la Universidad\n- CON QUÉ ACTIVIDADES:, a través de espacios de formación, debate y participación\n- CÓMO SE TRABAJA: Todas las actividades están diseñadas por y para estudiantes, acompañadas por la Dirección de Cooperación y profes de UPM y por ONGAWA e Inspiraction\n- QUÉ APORTA A LAS/OS VOLUNTARIAS/OS (dicho por ellas/os): Trabajo en equipo, comunicación y escucha activa, trabajo en red, gestión positiva de conflictos, optimismo en la transformación social, conocimiento de la realidad, capacidad de análisis crítico de la realidad…\n', 'matilde.jimenez@ongawa.org', 'ongawa.jpg\n', '', 'https://twitter.com/OngawaUni, https://www.instagram.com/globalchallenge.ongawa/', '', '', '', '', '0000-00-00 00:00:00'),
(47, 'Asociación Lux Mundi', 'Asociación católica formada por laicos dedicada a la formación y a poner en contacto con experiencias de voluntariado a los interesados.', 'Formaciones, voluntariados de invierno, experiencias misioneras en verano.', 'javiervjinu@gmail.com', 'lux-mundi.jpg\n', '', 'Instagram: @a.luxmundi', '', '', '', '', '0000-00-00 00:00:00'),
(48, 'Jatari', 'Somos una asociación que colaboramos con la misión de San Ramón, en el distrito de Chanchamayo, Perú. Y como las ganas de ayudar no se nos quitan en Madrid, colaboramos con distintas órdenes religiosas y asociaciones para hacer voluntariados.', 'En verano una misión católica en Perú, en la que trabajamos con niños en su mayoría, y en Madrid tenemos apoyo escolar en parroquias de Vallecas.', 'asociacionjatari@gmail.com', 'jatari.png\n', '', '@misionjatari', '', '', '', '', '0000-00-00 00:00:00'),
(49, 'Fundación Entreculturas', 'ONGD Cooperacion Internacional basada en educación.', 'Voluntariado internacional de corta y larga duración.', 'a.galera@entreculturas.org', '', '', 'Integram, facebook y twitter:Fundación Entreculturas', '', '', '', '', '0000-00-00 00:00:00'),
(50, 'ASOCIACIÓN BARRO', 'Barró es una asociación socioeducativa, sin ánimo de lucro, que se inició en 1994 en el barrio de Vallecas de Madrid. Pretende intervenir, de forma sistemática y continuada, en coordinación con diferentes grupos e instituciones del entorno. Su finalidad fundamental es crear un espacio socioeducativo, de desarrollo personal y comunitario, para población en situación de vulnerabilidad, marginación y/o exclusión social.', '.\n', 'eva.atance@asociacionbarro.org', 'barro.gif\n', '', '@ASOCIACIONBARRO', '', '', '', '', '0000-00-00 00:00:00'),
(51, 'AMUSI', 'AMUSI es una ONG formada por jóvenes con ganas de colaborar en proyectos socioeducativos en diferentes regiones de Mozambique. Surgió de estas mismas ganas comunes de aportar lo que cada uno sabe en su campo para crear proyectos que pudieran mejorar la educación de los jóvenes.', 'A día de hoy contamos con dos proyectos entrelazados: la organización de un campamento de verano para los alumnos de la Escuela Primaria de Lumbo (Nampula) y la creación de una \'semana cultural\' con actividades lúdico-formarivas a impartir en un Jardim Infantil de la ciudad de Nampula.', 'almormin@gmail.com', 'amusi.jpg\n', '', 'Instagram: amusi_mozambique / www.amusi.org / amusimozambique@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
(52, 'MISION CEBU', 'Voluntariado de mision en filipinas. Organización que nace hace más de 3 años a través de la parroquia de Santo Tomás Moro, Majadahonda. Somos todo jóvenes emprendedores con la voluntad de trabajar y servir al prójimo. En este contexto, estamos involucrados más de 60 personas y sigue creciendo a medida que pasa el tiempo. Trabajamos durante el año para poder financiar la ayuda en Filipinas y nos apoyamos y colaboramos con otras asociaciones y parroquias tanto europeas como filipinas.', 'Proceso de Construcción e instalación completa en infraviviendas de paneles solares y aerogeneradores\n\nConstrucción de colectores de agua de lluvia y red de abastecimiento al barrio de pulangbato. Filipinas.\n\nTerminar cerramientos y cubierta de famrschool para la educación y formación agrícola de los filipinos\n\nTerminar cerramientos, solado e interior de capilla', 'miguelczo.diaz@gmail.com', 'mision-cebu.png\n', '', 'Instagram @misioncebu y misioncebu.org', '', '', '', '', '0000-00-00 00:00:00'),
(53, 'SETEMMCM', 'Somos una ong que trabaja para erradicar las injusticias entre los paises del Norte y del Sur , trabajandolo mediante la sensibilización y educación , apoyando el Comercio Justo', 'Estancias de uno o dos meses en verano en Paises del Sur , para conocer en primera persona otra realidad muy distinta a la que vivimos , viajando a Bolivia, Honduras, Guatemala, India, Nepal ,', 'vvalentin@setem.org', 'setem.jpg\n', '', '@setem_MCM', '', '', '', '', '0000-00-00 00:00:00'),
(54, 'Por la Sonrisa de un Niño', 'PSE (Por la Sonrisa de un niño) Es ONG francesa que se encuentra en Camboya. Se encarga de proteger y escolarizar a niños desde infantil hasta formaciones profesionales, para asegurarles un trabajo y un futuro digno fuera de las calles. Actualmente también tiene proyectos destinados a la formación de madres y padres de las familias acogidas por la ONG.\n\nLa pagina web es la siguiente: https://www.psncamboya.org', 'Durante el mes de verano si eres mayor de 19 años puedes ir como voluntario (monitor) al Programa de Continuidad Escolar que se realiza para que en el mes de agosto, en el que los niños no tienen clases, no vuelvan a las calles o los vertederos. \n\nAdemás de cómo monitor de tiempo libre, se puede ir como dentista o médico, ya que existen proyectos destinados a la salud. \n\nTambién se puede participar en España dentro de distintos equipos con la finalidad de recaudar fondos y dar a conocer PSE.', 'sensibilizacion@psncamboya.org', 'por-la-sorisa-nino.png\n', '', 'Instagram: @pse_espana Twitter: @PSNCamboya Facebook: pse.porlasonrisadeunnino', '', '', '', '', '0000-00-00 00:00:00'),
(55, 'Cruz Roja Española', 'La Cruz Roja Española es una institución humanitaria, de carácter voluntario y de interés público. Trabajamos en las áreas de conocimiento de socorros, intervención social, empleo, salud, educación, medio ambiente y en el ámbito internacional. Trabajamos cada día para estar más cerca de las personas.', 'Hay una gran variedad de proyectos disponibles desde actividades con infancia en diferentes contextos, realizando entrevistas personales para acoger y valorar las necesidades de las personas que solicitan ayuda a Cruz Roja, ayuda y seguimiento en itinerarios hacia el empleo, o realizando talleres de diferentes temáticas (salud, medio ambiente, prevención de conductas violentas etc).', 'rebecca.tolosa@cruzroja.es', 'cruz-roja.png\n', '', 'Cruz Roja Comunidad De Madrid (Fb, Twitter, Instagram)', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `ongs` (`id_ong`, `nombre_ong`, `descripcion_ong`, `voluntariado_ong`, `email_ong`, `logo_ong`, `web_ong`, `facebook_ong`, `twitter_ong`, `instagram_ong`, `linkedin_ong`, `video_ong`, `fecha_inscripcion`) VALUES
(56, 'Fundación Siempre Adelante, ONGD', 'Es una ONGD para el Desarrollo, sin ánimo de lucro, promovida por la Superiora General de las Religiosas Concepcionistas Misioneras de la Enseñanza, inscrita en el Registro de Fundaciones Asistenciales del Ministerio de Trabajo y Asuntos Sociales con el nº 28/1.325, por Orden TAS/3982/2004, de 5 de noviembre (BOE 2 de diciembre de 2004), y provista de CIF: G-84021120.\nLos fines de interés general de la Fundación son:\na) Contribuir a la educación y formación integral de personas, grupos y pueblos de los países en vías de desarrollo y de los núcleos de población que sufren las consecuencias de la pobreza y marginación en el llamado cuarto mundo, como medio que promueva su desarrollo equilibrado e integral, y ayude a avanzar hacia la fraternidad entre los países y personas.\nb) Desarrollar actividades de asistencia social y despertar en las personas la toma de conciencia de la dignidad de todo hombre y la responsabilidad de colaborar en su desarrollo humano y cultural.\nc) Impulsar acciones de voluntariado a nivel nacional y en países en vías de desarrollo, así como organizar y vertebrar su actuación en la Fundación.', 'Proyectos Misioneros Concepcionistas, voluntariado de verano en República Dominicana (Consuelo), Guinea Ecuatorial (Evinayong) y Filipinas (Bacolod), un mes, de primeros de julio a primeros de agosto. Los proyectos se llevan a cabo en un lugar de misión Concepcionista y están tutelados por religiosas de la Congregación que viven en los lugares donde se desarrolla la experiencia misionera. Los voluntarios residen en la casa de las religiosas, y la Congregación se hace cargo de los gastos de alojamiento y manutención. La participación se realiza, ante todo, como un compromiso de fe cristiana, incluyendo otros elementos de importancia como comunicación de experiencias, integración en la cultura del país, formación... Campos de cooperación del voluntario: clases de refuerzo a niños y jóvenes de Primaria y Bachiller, actividades deportivas, trabajos manuales, talleres formativos, juegos, animación de celebraciones religiosas, formación de adultos y de profesorado, visitas y apoyo a familias necesitadas. El proyecto de Bacolod tiene lugar durante el curso escolar, por lo que los voluntarios también se integrarán en las clases regulares.\nPara los voluntarios, hay un encuentro formativo y organizativo. En un fin de semana del mes de abril se tiene el encuentro en Madrid con el grupo de voluntarios que van a participar en los proyectos misioneros que se llevan a cabo en los lugares descritos. se organizan los proyectos, las actividades y distribución de tareas de acuerdo a la realidad del lugar de destino, terminando con la celebración de la Eucaristía del envío misionero. También se tiene formación online, desde que se inicia el proceso de selección hasta la realización del proyecto en sí. Semanas después de regresar del proyecto, tiene lugar un nuevo encuentro de evaluación. \nLos voluntarios derrochan generosidad, trabajan en equipo, lo que viven en estos días lo integran en su vida y se lo cuentan a familiares, amigos, colegios, y apoyan económicamente las actividades de "Siempre Adelante".', 'comunicaciones.sa@concepcionistas.com', 'siempre-adelante.jpg\n', '', 'Facebook, YouTube, Twitter, Instagram', '', '', '', '', '0000-00-00 00:00:00'),
(57, 'Asociación Antares', 'Antares se dedica a ofrecer a actividades de ocio y deporte a personas con discapacidad intelectual con el fin de fomentar su inclusión en la sociedad mientras las familias cuidadoras pueden optar a oportunidades de conciliación y respiro familiar.', 'PROGRAMA DE OCIO Y DEPORTE:Nuestro programa de ocio y deporte se lleva a cabo todos los fines de semana del año excepto el mes de agosto. Realizamos una media de cuatro actividades cada sábado y tres los domingos. Todas ellas en entornos comunitarios. Entre estas actividades, por ejemplo, se programan visitas a museos, cine, teatro, restaurantes, discotecas, o se visitan espectáculos deportivos como partidos de fútbol, baloncesto, waterpolo, o se practica algún deporte como natación.\nPROGRAMA DE ESTANCIAS Y RESPIRO FAMILIAR: Dos veces al mes nos vamos de campamento con personas con discapacidad intelectual. Disfrutamos de fines de semana, puentes y dos semanas de vacaciones en agosto. Los destinos son ciudades de todo el país donde aprovechamos para realizar turismo y fomentar la normalización del colectivo.\nPROGRAMA DE CONCILIACIÓN: Se trata de la programación de actividades extraescolares de lunes a jueves de 17:30 a 19:30. Se realiza deporte adaptado, taller de música y piscina. Por otro lado en periodos no lectivos como Navidad y verano, se llevan a cabo campamentos urbanos en los cuales se ofertan actividades de ocio y deporte. \n', 'psancho@asociacionantares.org', 'antares.jpg\n', '', 'Twitter e Instagram @AntaresAsoc FAcebook; @asociacionantares', '', '', '', '', '0000-00-00 00:00:00'),
(58, 'ASOCIACIÓN HONTANAR', 'Los Franciscanos TOR fundan en 1.993 Hontanar con la finalidad de prevención de la marginación y la atención a personas con adicciones en proceso de rehabilitación y reinserción.', 'Hontanar desarrolla un programa de atención a personas con adicciones, PISO DE INSERCIÓN SOCIAL, para favorecer el tratamiento ambulatorio de las personas con mayor vulnerabilidad por falta de apoyo familiar o no ser este conveniente.', 'asociacionhontanar@hotmail.com', 'asoc-hontanar.jpg\n', '', 'facebook: ASOCIACIÓN HONTANAR y en https://asociacionhontanar.org', '', '', '', '', '0000-00-00 00:00:00'),
(59, 'Fundación La Semilla', 'La Fundación La Semilla es una organización sin ánimo de lucro que hace teatro solidario y dona lo que recauda a los proyectos que selecciona de distintas ONGs y asociaciones, colaborando en la consecución de sus fines sociales, ya sea en España o en el tercer mundo. Todos sus miembros son voluntarios.', 'Se puede colaborar en diversas tareas: actuación en obras de teatro, publicidad, selección de proyectos solidarios, búsqueda de teatros y ONGs, acomodar en teatros, gestión de redes sociales, e-mail y web, luces y sonido, decorados, maquillaje y peluquería, vestuario, diseño de imagen (carteles), contacto con medios de comunicación, participación en ferias, composición y dirección musical, grabación de narraciones, música y coros de canciones, gestión de reservas, coreografía, dirección y guión, etc.\n', 'lafundacionlasemilla@gmail.com', 'fundacion-la-semilla.jpg\n', '', 'www.facebook.com/fundacionlasemilla, www.twitter.com/semillateatro, www.instagram.com/semillateatro,', '', '', '', '', '0000-00-00 00:00:00'),
(60, 'REDES (Red de Entidades para el Desarrollo Solidario).', 'REDES en una agrupación de más de 50 entidades de Cooperación Internacional. Somos mayoritariamente ONGD ligadas a instituciones religiosas y otras organizaciones de inspiración cristiana que deseamos trabajar, conjuntamente, para ser más significativos y eficaces en nuestro compromiso a favor de la justicia y la transformación del mundo, desde una dimensión constitutiva del anuncio del Evangelio, es decir, de la misión de la Iglesia.', 'Proyectos de Voluntariado Internacional.', 'voluntariado@redes-ongd.org', 'redes.jpg\n', '', 'www.redes-ongd.org / www.instagram.com/redes_ongd / www.youtube.com/channel/UCc8MUZ6b5725tvA7QspnOvg', '', '', '', '', '0000-00-00 00:00:00'),
(61, 'Fundación Desarrollo y Asistencia', 'En Desarrollo y Asistencia llevamos a cabo programas de acompañamiento a personas que se encuentran en situación de necesidad por soledad, enfermedad, exclusión, discapacidad u otras causas.\nComenzamos nuestra actividad en diciembre de 1995. Desde entonces hemos ido creciendo apoyándonos siempre en el deseo de ayudar con nuestro acompañamiento persona a persona y nuestros valores fundamentales como son el reconocimiento de la dignidad de la persona y el respeto a su libertad, el apoyo a la familia y la constancia y el compromiso en el trabajo.', 'Apoyo a Personas Sin Hogar consiste en la realización de tareas de acompañamiento a personas sin hogar para tratar de paliar su soledad y devolverles su autoestima a través de la compañía, el afecto, los pequeños detalles, la conversación y la escucha activa.\nActividades con Personas con Discapacidad salidas de ocio y tiempo libre para personas con discapacidad intelectual que tienen este problema. Son alumnos de Centros de Educación Especial y Ocupacionales, seleccionados por los profesionales de estos centros, como las personas que más lo necesitan, ellos y sus familias.\nPrograma En Línea objetivo el impartir una serie de refuerzos educativos a niños escolarizados de 8 a 12 años con riesgos de exclusión social.\n', 'merchealvarez@desarrolloyasistencia.org', 'desarrollo-y-asistencia.png\n', '', 'Facebook:DesarrolloyAsistencia o Web:www.desarrolloyasistencia.org ', '', '', '', '', '0000-00-00 00:00:00'),
(62, 'Cooperating Volunteers', 'Cooperating volunteers es una empresa que organiza experiencia de voluntariado e intercambio cultural.\n\nCooperating volunteers nació para ofrecer un tipo de experiencia diferente; una experiencia auténtica en contacto con la comunidad local y proyectos o instituciones sociales reales (hospitales, centros educativos, etc). \n\nCooperating Volunteers ofrece una experiencia de voluntariado. Participar en los proyectos, asistirlos, alojarse en los alojamientos con nuestros equipos locales, disfrutar y conocer cultura, son unas de las tantas actividades que hacen de ella una experiencia única. \n\nCuando nuestro equipo está en destino, lo más lindo de nuestra experiencia como coordinadores es visualizar el factor empatico que tiene este tipo de experiencia. En destino, el objetivo del voluntario es conocer su cultura, su gente y sentir como ellos. \n\nCooperating Volunteers está conformado por un equipo de profesionales con extensa experiencia en coordinación y gestión de voluntariado. Nos caracterizamos por estar estar las 24 horas los 365 días del año asistiendo a los proyectos, equipo en destino y a los voluntarios. \n\nLos esperamos para vivir más que una experiencia de voluntariado.', 'Los estudiantes tiene la opción de poder participar en más de 30 países. En cada uno de ellos, puede optar por diferentes programas dependiendo del perfil de cada uno de los interesados. Programas de educación, construcción, cuidado de niños, médicos, deportes, conservación de vida salvaje, conservación de vida Silvestre y más, son los diferentes proyectos en los cuales los voluntarios pueden participar.\n\nA nivel general todos los interesados pueden participar siempre y cuando sea mayor de edad (se aceptan voluntarios de 17 años a determinados destinos presentando autorización firmada por los padres o tutor legal) y presenten antecedentes no penales.\n\nLos proyectos como médicos, asistencia clínica en los proyectos con animales y otros, los voluntarios deberán presentar más requisitos según las tareas / responsabilidades que realice el proyecto elegido.\n\nCada año los voluntarios son cada vez más. Esto nos demuestra que más personas optar por una experiencia más responsable y auténtica. Alejándonos de lo convencional.\n\nDesde el 2014 Cooperating Volunteers ha gestionado más de 15.000 voluntarios.\n\nEste verano 2019, han viajado por los diferentes destinos más de 900 voluntarios.\n\nLos destinos más solicitados son Uganda, India, Kenia, Ghana, Tanzania, Nepal, Indonesia, Camboya, Costa Rica y Panama. \n', 'mayra@cooperatingvolunteers.com', '', '', 'Instagram:cooperatingvolunteers', '', '', '', '', '0000-00-00 00:00:00'),
(63, 'YouSocial Volunteer', 'YouSocial Volunteer es una plataforma social que te ofrece experiencias de voluntariado únicas en el extranjero, en las que vivirás una gran aventura mientras conectas, aprendes y compartes con una nueva cultura.\nNuestros proyectos, que en línea con los Objetivos de Desarrollo Sostenible, abarcan ámbitos como la Educación de calidad, la Empleabilidad, Salud y Bienestar; generan un impacto positivo en las comunidades menos favorecidas de Nepal, India, Kenia y Filipinas.\nEl equipo de YouSocial, con más de 15 años de experiencia en voluntariado internacional, te proporcionará recursos clave para preparar tu viaje, dar visibilidad a tu proyecto, asesorándote para que tu voluntariado sea una experiencia inspiradora y con impacto tanto a nivel personal como profesional.\nSumérgete en esta nueva aventura con YouSocial Volunteer solicitando tu plaza en www.yousocialvolunteer.com!" \n', 'EMPRENDIMIENTO SOCIAL\nDesarrollo de un sistema de aguas en Filipinas\nDesarrollo de una bebida orgánica en Filipinas\nDesarrollo de una panaderia local en Filipinas\nTaller de cocina y nutrición en India\n\nEDUCACION y SALUD\nEducación de calidad para niños en kenya\nEducación y clases de refuerzo en Nepal\nEducación, Nutrición, salud e higiene en Nepal\nEducación con niños en Filipinas\nClinic de futbol con niños en filipinas \nDesarrollo profesional de jóvenes en India\n\nPERIODISMO Y ARTE\nEmpoderamiento de mujeres a través de la musica en India\nDesarrollo de un canal de noticias en India\nCinematografia y medios digitales en India\n\n', 'yousocialvolunteer@gmail.com', 'you-social.png\n', '', 'Instagram,Facebook, Twitter y Youtube:YOUSOCIALVOLUNTEER', '', '', '', '', '0000-00-00 00:00:00'),
(64, 'AMAFE', 'AMAFE, Asociación Madrileña de Amigos y Familiares de Personas con Esquizofrenia y, próximamente, Asociación Española de Apoyo en Psicosis, es una entidad sin ánimo de lucro, de ámbito provincial, inscrita en el Registro Nacional de Asociaciones, declarada de Utilidad Pública desde 1996 y certificada en Calidad según la ISO 9001.\n\nAMAFE, fue constituida en el año 1989 por familiares de personas con enfermedad mental que sintieron la necesidad de dotarse de una Entidad que pudiera dar una respuesta integral y efectiva a las cuestiones relativas a la salud mental de sus seres queridos. Desde esa fecha ha ido incrementando progresivamente su base social con la incorporación de nuevos miembros. En la actualidad, está integrada por más de 600 socios, que a su vez representan a miles de familias con algún miembro afectado de psicosis o esquizofrenia.', 'Programas anuales de voluntariado', 'vgonzalez@amafe.org', 'amafe.jpg\n', '', 'Facebook;amafe.pagina.oficial oTwitter:Amafesemueve', '', '', '', '', '0000-00-00 00:00:00'),
(65, 'UNIVERSIDAD POLITECNICA DE MADRID. DIRECCIÓN DE COOPERACION', 'La Dirección de Área para Latinoamérica y Cooperación al Desarrollo desarrolla una serie de acciones que tiene como objetivo comenzar a promover una labor en el ámbito de la Cooperación al Desarrollo fundamentalmente entre los profesores y alumnos de la UPM y a centrar la acción de la UPM en este campo en las misiones y capacidades específicas de la Universidad. La cooperación al desarrollo de la UPM está orientada en la línea que marca la nueva Agenda 2030 de Naciones Unidos con sus Objetivos de Desarrollo Sostenible (ODS), apostando por las siguientes líneas:\n• Una visión global del desarrollo, trabajando en la solución de problemas globales al desarrollo, desde la realidad local donde se ubica la UPM.\n• El acercamiento a los problemas de sostenibilidad, tal como señala la nueva Agenda 2030, englobando los aspectos de pobreza y de inequidad, que se trabajaba desde la cooperación al desarrollo. Esto implica ver la sostenibilidad desde los prismas económico, social y medioambiental.\n• Una apuesta multidisciplinar de la UPM, buscando sinergias entre distintos grupos de investigación y de cooperación que pueden aportar distintas soluciones a los retos de la Agenda.\n• Un punto focal de trabajo en red con otros actores de la cooperación, como son agencias, empresas y ONGD; aprovechando la capacidad de la universidad como dinamizadora.\nLos tipos de acciones enmarcadas en la normativa de la UPM son:\n• Acciones de sensibilización\n• Acciones de apoyo a la actividad voluntaria en cooperación\n• Acciones en el campo de la formación\n• Actividades de asistencia técnica y proyectos de desarrollo, \n• Acciones de investigación\n\n', 'Ayudas de viaje de cooperación para la realización de TFG/TFM o prácticas curriculares. Programa de Voluntariado Internacional de las Universidades Públicas de la Comunidad de Madrid.', 'e.lopez@upm.es', 'upm.png\n', '', '', '', '', '', '', '0000-00-00 00:00:00'),
(66, 'Flores de kiskeya', 'Apoyar a las mujeres más vulnerables en Anse-á-pitres, Haití. Nuestro proyecto ha ido evolucionando con el objetivo de que las mujeres consigan mayor autonomía, desarrollo y empoderamiento. Para ello, se llevan a cabo una serie de herramientas y habilidades dirigidas a las mujeres y sus hijos para que sean autosuficientes el día de mañana.', 'En Haití tenemos los campamentos de verano, y el resto del año recibimos voluntarios según las necesidades. Por otro lado, tenemos el voluntariado en España con diferentes departamentos con el objetivo de realizar eventos y demás.', 'Info@floresdekiskeya.org', 'flores-kiskeya.png\n', '', 'Info@floresdekiskeya.org', '', '', '', '', '0000-00-00 00:00:00'),
(67, 'El Sordo Fisgón. Turismo Accesible.', 'Consiste en una plataforma en la que se exponen vídeos en forma de reportaje que cuentan la experiencia, en lengua de signos española, de los viajes realizados por el autor. El proyecto se materializa en vídeos publicados en el canal de YouTube: El Sordo Fisgón, y en la página web: www.elsordofisgon.com. También aparece en Facebook. El objetivo es eliminar la multitud de barreras de acceso a la información que encuentran las personas sordas en el ámbito del turismo.\n', '#¿NOMBRE?', 'contacto@elsordofisgon.com', 'el-sordo-fisgon.jpg\n', '', 'Web: www.elsordofisgon.com// Canal de Youtube El Sordo Fisgón // Facebook: El Sordo Fisgón', '', '', '', '', '0000-00-00 00:00:00'),
(68, 'Médicos', 'Nueva ONG', '', NULL, NULL, '', NULL, '', '', '', '', '2020-08-31 22:17:46'),
(69, 'Voluntas Vincit', 'adf', 'f', NULL, NULL, '', NULL, '', '', '', '', '2020-08-31 20:08:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `tipo_proyecto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='proyecto a realizar en el voluntariado';

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `tipo_proyecto`) VALUES
(1, 'Ancianos'),
(2, 'Sin recursos'),
(3, 'Enfermos'),
(4, 'Cooperación Social'),
(5, 'Misión'),
(6, 'Niños'),
(7, 'Discapacitados'),
(8, 'Animales'),
(9, 'Proyecto Científico'),
(10, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rifa`
--

DROP TABLE IF EXISTS `rifa`;
CREATE TABLE `rifa` (
  `id_rifa` int(11) NOT NULL,
  `articulo_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion_rifa` longtext COLLATE utf8mb4_spanish2_ci,
  `foto_rifa` text COLLATE utf8mb4_spanish2_ci,
  `empresa_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'empresa o tienda que nos de el articulo',
  `instagram_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `twitter_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `rrss_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'cualquier otra red social',
  `telefono_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'telefono de contacto de la persona de la empresa',
  `email_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'email de contacto de la persona de la empresa',
  `fecha_rifa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `rifa`
--

INSERT INTO `rifa` (`id_rifa`, `articulo_rifa`, `descripcion_rifa`, `foto_rifa`, `empresa_rifa`, `instagram_rifa`, `twitter_rifa`, `rrss_rifa`, `telefono_rifa`, `email_rifa`, `fecha_rifa`) VALUES
(1, 'Plano', 'Magnífico plano de color azul. Único en su especie. Seguro que le toca a Mariana', 'hola.png', 'Copy5', 'tusfotocopias5', 'copy5', 'Copy5', '616209281', 'info@copy5.org', '2020-11-26 13:05:42'),
(2, 'Collar', 'Collar de plata de 15 quilates, valorado en 200?', 'collar.jpg', 'Tiffanys', 'tusfotocopias5', 'copy5', 'Copy5', '616209281', 'info@copy5.org', '2020-11-26 13:05:42'),
(3, 'Camiseta VOLUNFAIR 2018', 'Camiseta oficial del año 2018. ¡Presume de ella delante de tus amigos!', 'foto5.jpg', 'Copy5', 'tusfotocopias5', 'copy5', 'Copy5', '616209281', 'info@copy5.org', '2020-11-26 13:05:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntariado`
--

DROP TABLE IF EXISTS `voluntariado`;
CREATE TABLE `voluntariado` (
  `id_voluntariado` int(11) NOT NULL,
  `ong_voluntariado` int(11) NOT NULL,
  `lugar_voluntariado` int(11) NOT NULL,
  `tipo_voluntariado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='voluntariados ofertados';

--
-- Volcado de datos para la tabla `voluntariado`
--

INSERT INTO `voluntariado` (`id_voluntariado`, `ong_voluntariado`, `lugar_voluntariado`, `tipo_voluntariado`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 10),
(3, 1, 8, 1),
(4, 1, 8, 10),
(5, 2, 9, 1),
(6, 2, 9, 6),
(7, 2, 9, 7),
(8, 2, 9, 3),
(9, 2, 9, 4),
(10, 2, 9, 2),
(11, 3, 2, 6),
(12, 3, 2, 4),
(13, 3, 2, 2),
(14, 3, 8, 6),
(15, 3, 8, 4),
(16, 3, 8, 2),
(17, 4, 9, 1),
(18, 4, 9, 6),
(19, 4, 9, 7),
(20, 4, 9, 3),
(21, 4, 9, 2),
(22, 4, 9, 5),
(23, 4, 1, 1),
(24, 4, 1, 6),
(25, 4, 1, 7),
(26, 4, 1, 3),
(27, 4, 1, 2),
(28, 4, 1, 5),
(29, 4, 10, 1),
(30, 4, 10, 6),
(31, 4, 10, 7),
(32, 4, 10, 3),
(33, 4, 10, 2),
(34, 4, 10, 5),
(35, 4, 2, 1),
(36, 4, 2, 6),
(37, 4, 2, 7),
(38, 4, 2, 3),
(39, 4, 2, 2),
(40, 4, 2, 5),
(41, 4, 3, 1),
(42, 4, 3, 6),
(43, 4, 3, 7),
(44, 4, 3, 3),
(45, 4, 3, 2),
(46, 4, 3, 5),
(47, 4, 4, 1),
(48, 4, 4, 6),
(49, 4, 4, 7),
(50, 4, 4, 3),
(51, 4, 4, 2),
(52, 4, 4, 5),
(53, 4, 5, 1),
(54, 4, 5, 6),
(55, 4, 5, 7),
(56, 4, 5, 3),
(57, 4, 5, 2),
(58, 4, 5, 5),
(59, 4, 6, 1),
(60, 4, 6, 6),
(61, 4, 6, 7),
(62, 4, 6, 3),
(63, 4, 6, 2),
(64, 4, 6, 5),
(65, 4, 8, 1),
(66, 4, 8, 6),
(67, 4, 8, 7),
(68, 4, 8, 3),
(69, 4, 8, 2),
(70, 4, 8, 5),
(71, 5, 8, 6),
(72, 5, 8, 5),
(73, 6, 9, 6),
(74, 6, 1, 6),
(75, 6, 4, 6),
(76, 6, 5, 6),
(77, 6, 8, 6),
(78, 6, 9, 6),
(79, 6, 1, 4),
(80, 6, 4, 4),
(81, 6, 5, 4),
(82, 6, 8, 4),
(83, 7, 2, 6),
(84, 7, 7, 6),
(85, 7, 2, 3),
(86, 7, 7, 3),
(87, 7, 2, 4),
(88, 7, 7, 4),
(89, 8, 8, 7),
(90, 9, 9, 6),
(91, 10, 1, 10),
(92, 10, 1, 5),
(93, 11, 8, 6),
(94, 12, 9, 7),
(95, 12, 1, 7),
(96, 12, 9, 3),
(97, 12, 1, 3),
(98, 13, 9, 10),
(99, 14, 9, 4),
(100, 14, 1, 4),
(101, 14, 9, 10),
(102, 14, 1, 10),
(103, 15, 8, 10),
(104, 16, 7, 10),
(105, 16, 7, 5),
(106, 17, 8, 6),
(107, 17, 8, 3),
(108, 17, 8, 4),
(109, 17, 8, 2),
(110, 18, 9, 6),
(111, 18, 9, 7),
(112, 19, 9, 10),
(113, 19, 1, 10),
(114, 20, 2, 1),
(115, 20, 2, 6),
(116, 20, 2, 7),
(117, 20, 2, 8),
(118, 20, 2, 3),
(119, 20, 2, 4),
(120, 20, 4, 1),
(121, 20, 4, 6),
(122, 20, 4, 7),
(123, 20, 4, 8),
(124, 20, 4, 3),
(125, 20, 4, 4),
(126, 20, 5, 1),
(127, 20, 5, 6),
(128, 20, 5, 7),
(129, 20, 5, 8),
(130, 20, 5, 3),
(131, 20, 5, 4),
(132, 20, 8, 1),
(133, 20, 8, 6),
(134, 20, 8, 7),
(135, 20, 8, 8),
(136, 20, 8, 3),
(137, 20, 8, 4),
(138, 21, 9, 1),
(139, 21, 9, 7),
(140, 21, 9, 3),
(141, 21, 9, 2),
(142, 21, 8, 1),
(143, 21, 8, 7),
(144, 21, 8, 3),
(145, 21, 8, 2),
(146, 22, 2, 8),
(147, 22, 3, 8),
(148, 22, 4, 8),
(149, 22, 5, 8),
(150, 22, 8, 8),
(151, 22, 2, 10),
(152, 22, 3, 10),
(153, 22, 4, 10),
(154, 22, 5, 10),
(155, 22, 8, 10),
(156, 23, 9, 7),
(157, 24, 9, 2),
(158, 25, 2, 1),
(159, 25, 2, 6),
(160, 25, 2, 7),
(161, 25, 2, 3),
(162, 25, 2, 4),
(163, 25, 2, 2),
(164, 26, 2, 1),
(165, 26, 2, 6),
(166, 26, 2, 7),
(167, 26, 2, 8),
(168, 26, 2, 3),
(169, 26, 2, 4),
(170, 26, 2, 2),
(171, 26, 4, 1),
(172, 26, 4, 6),
(173, 26, 4, 7),
(174, 26, 4, 8),
(175, 26, 4, 3),
(176, 26, 4, 4),
(177, 26, 4, 2),
(178, 26, 5, 1),
(179, 26, 5, 6),
(180, 26, 5, 7),
(181, 26, 5, 8),
(182, 26, 5, 3),
(183, 26, 5, 4),
(184, 26, 5, 2),
(185, 26, 8, 1),
(186, 26, 8, 6),
(187, 26, 8, 7),
(188, 26, 8, 8),
(189, 26, 8, 3),
(190, 26, 8, 4),
(191, 26, 8, 2),
(192, 27, 1, 3),
(193, 27, 1, 4),
(194, 27, 1, 2),
(195, 28, 10, 1),
(196, 28, 10, 6),
(197, 28, 10, 7),
(198, 28, 10, 8),
(199, 28, 10, 3),
(200, 28, 10, 4),
(201, 28, 10, 2),
(202, 29, 9, 6),
(203, 29, 9, 7),
(204, 30, 9, 1),
(205, 30, 9, 6),
(206, 30, 9, 7),
(207, 30, 9, 3),
(208, 30, 9, 2),
(209, 30, 1, 1),
(210, 30, 1, 6),
(211, 30, 1, 7),
(212, 30, 1, 3),
(213, 30, 1, 2),
(214, 31, 4, 6),
(215, 31, 5, 6),
(216, 31, 4, 2),
(217, 31, 5, 2),
(218, 32, 1, 1),
(219, 32, 10, 1),
(220, 32, 2, 1),
(221, 32, 4, 1),
(222, 32, 5, 1),
(223, 32, 1, 6),
(224, 32, 10, 6),
(225, 32, 2, 6),
(226, 32, 4, 6),
(227, 32, 5, 6),
(228, 32, 1, 2),
(229, 32, 10, 2),
(230, 32, 2, 2),
(231, 32, 4, 2),
(232, 32, 5, 2),
(233, 32, 1, 5),
(234, 32, 10, 5),
(235, 32, 2, 5),
(236, 32, 4, 5),
(237, 32, 5, 5),
(238, 33, 9, 2),
(239, 33, 1, 2),
(240, 34, 7, 1),
(241, 34, 7, 6),
(242, 34, 7, 3),
(243, 34, 7, 4),
(244, 34, 7, 2),
(245, 34, 7, 5),
(246, 35, 9, 6),
(247, 35, 1, 6),
(248, 36, 9, 1),
(249, 36, 9, 3),
(250, 36, 9, 4),
(251, 36, 9, 5),
(252, 36, 4, 1),
(253, 36, 4, 3),
(254, 36, 4, 4),
(255, 36, 4, 5),
(256, 36, 5, 1),
(257, 36, 5, 3),
(258, 36, 5, 4),
(259, 36, 5, 5),
(260, 37, 1, 1),
(261, 37, 1, 6),
(262, 37, 1, 7),
(263, 37, 1, 2),
(264, 37, 1, 5),
(265, 37, 10, 1),
(266, 37, 10, 6),
(267, 37, 10, 7),
(268, 37, 10, 2),
(269, 37, 10, 5),
(270, 37, 7, 1),
(271, 37, 7, 6),
(272, 37, 7, 7),
(273, 37, 7, 2),
(274, 37, 7, 5),
(275, 38, 9, 1),
(276, 38, 1, 1),
(277, 38, 10, 1),
(278, 38, 2, 1),
(279, 38, 3, 1),
(280, 38, 4, 1),
(281, 38, 5, 1),
(282, 38, 6, 1),
(283, 38, 7, 1),
(284, 38, 9, 6),
(285, 38, 1, 6),
(286, 38, 10, 6),
(287, 38, 2, 6),
(288, 38, 3, 6),
(289, 38, 4, 6),
(290, 38, 5, 6),
(291, 38, 6, 6),
(292, 38, 7, 6),
(293, 38, 9, 7),
(294, 38, 1, 7),
(295, 38, 10, 7),
(296, 38, 2, 7),
(297, 38, 3, 7),
(298, 38, 4, 7),
(299, 38, 5, 7),
(300, 38, 6, 7),
(301, 38, 7, 7),
(302, 38, 9, 3),
(303, 38, 1, 3),
(304, 38, 10, 3),
(305, 38, 2, 3),
(306, 38, 3, 3),
(307, 38, 4, 3),
(308, 38, 5, 3),
(309, 38, 6, 3),
(310, 38, 7, 3),
(311, 38, 9, 2),
(312, 38, 1, 2),
(313, 38, 10, 2),
(314, 38, 2, 2),
(315, 38, 3, 2),
(316, 38, 4, 2),
(317, 38, 5, 2),
(318, 38, 6, 2),
(319, 38, 7, 2),
(320, 38, 9, 5),
(321, 38, 1, 5),
(322, 38, 10, 5),
(323, 38, 2, 5),
(324, 38, 3, 5),
(325, 38, 4, 5),
(326, 38, 5, 5),
(327, 38, 6, 5),
(328, 38, 7, 5),
(329, 39, 9, 7),
(330, 40, 9, 6),
(331, 40, 1, 6),
(332, 40, 10, 6),
(333, 40, 9, 10),
(334, 40, 1, 10),
(335, 40, 10, 10),
(336, 40, 9, 5),
(337, 40, 1, 5),
(338, 40, 10, 5),
(339, 41, 9, 10),
(340, 41, 1, 10),
(341, 42, 9, 4),
(342, 42, 4, 4),
(343, 42, 5, 4),
(344, 42, 9, 10),
(345, 42, 4, 10),
(346, 42, 5, 10),
(347, 43, 9, 1),
(348, 43, 9, 6),
(349, 43, 9, 3),
(350, 43, 9, 2),
(351, 43, 9, 5),
(352, 44, 9, 10),
(353, 44, 7, 10),
(354, 45, 7, 6),
(355, 45, 7, 4),
(356, 46, 9, 10),
(357, 47, 9, 1),
(358, 47, 9, 6),
(359, 47, 9, 7),
(360, 47, 9, 3),
(361, 47, 9, 2),
(362, 47, 9, 5),
(363, 47, 7, 1),
(364, 47, 7, 6),
(365, 47, 7, 7),
(366, 47, 7, 3),
(367, 47, 7, 2),
(368, 47, 7, 5),
(369, 48, 9, 6),
(370, 48, 9, 3),
(371, 48, 9, 4),
(372, 48, 9, 2),
(373, 48, 9, 5),
(374, 48, 4, 6),
(375, 48, 4, 3),
(376, 48, 4, 4),
(377, 48, 4, 2),
(378, 48, 4, 5),
(379, 48, 5, 6),
(380, 48, 5, 3),
(381, 48, 5, 4),
(382, 48, 5, 2),
(383, 48, 5, 5),
(384, 49, 1, 6),
(385, 49, 2, 6),
(386, 49, 4, 6),
(387, 49, 5, 6),
(388, 49, 7, 6),
(389, 49, 1, 4),
(390, 49, 2, 4),
(391, 49, 4, 4),
(392, 49, 5, 4),
(393, 49, 7, 4),
(394, 49, 1, 2),
(395, 49, 2, 2),
(396, 49, 4, 2),
(397, 49, 5, 2),
(398, 49, 7, 2),
(399, 49, 1, 5),
(400, 49, 2, 5),
(401, 49, 4, 5),
(402, 49, 5, 5),
(403, 49, 7, 5),
(404, 50, 9, 6),
(405, 50, 9, 4),
(406, 50, 9, 10),
(407, 51, 7, 6),
(408, 51, 7, 4),
(409, 51, 7, 2),
(410, 52, 2, 6),
(411, 52, 2, 4),
(412, 52, 2, 2),
(413, 52, 2, 5),
(414, 53, 2, 6),
(415, 53, 4, 6),
(416, 53, 5, 6),
(417, 53, 7, 6),
(418, 53, 2, 4),
(419, 53, 4, 4),
(420, 53, 5, 4),
(421, 53, 7, 4),
(422, 54, 2, 6),
(423, 54, 2, 7),
(424, 54, 2, 4),
(425, 54, 2, 2),
(426, 54, 2, 10),
(427, 54, 8, 6),
(428, 54, 8, 7),
(429, 54, 8, 4),
(430, 54, 8, 2),
(431, 54, 8, 10),
(432, 55, 9, 1),
(433, 55, 9, 6),
(434, 55, 9, 7),
(435, 55, 9, 3),
(436, 55, 9, 4),
(437, 55, 9, 2),
(438, 56, 2, 6),
(439, 56, 4, 6),
(440, 56, 5, 6),
(441, 56, 7, 6),
(442, 56, 2, 4),
(443, 56, 4, 4),
(444, 56, 5, 4),
(445, 56, 7, 4),
(446, 56, 2, 5),
(447, 56, 4, 5),
(448, 56, 5, 5),
(449, 56, 7, 5),
(450, 57, 9, 7),
(451, 58, 9, 10),
(452, 59, 9, 10),
(453, 59, 1, 10),
(454, 60, 1, 10),
(455, 60, 2, 10),
(456, 60, 3, 10),
(457, 60, 4, 10),
(458, 60, 5, 10),
(459, 60, 6, 10),
(460, 60, 7, 10),
(461, 61, 9, 1),
(462, 61, 9, 7),
(463, 61, 9, 3),
(464, 62, 10, 1),
(465, 62, 2, 1),
(466, 62, 3, 1),
(467, 62, 4, 1),
(468, 62, 5, 1),
(469, 62, 6, 1),
(470, 62, 7, 1),
(471, 62, 10, 6),
(472, 62, 2, 6),
(473, 62, 3, 6),
(474, 62, 4, 6),
(475, 62, 5, 6),
(476, 62, 6, 6),
(477, 62, 7, 6),
(478, 62, 10, 7),
(479, 62, 2, 7),
(480, 62, 3, 7),
(481, 62, 4, 7),
(482, 62, 5, 7),
(483, 62, 6, 7),
(484, 62, 7, 7),
(485, 62, 10, 8),
(486, 62, 2, 8),
(487, 62, 3, 8),
(488, 62, 4, 8),
(489, 62, 5, 8),
(490, 62, 6, 8),
(491, 62, 7, 8),
(492, 62, 10, 3),
(493, 62, 2, 3),
(494, 62, 3, 3),
(495, 62, 4, 3),
(496, 62, 5, 3),
(497, 62, 6, 3),
(498, 62, 7, 3),
(499, 62, 10, 4),
(500, 62, 2, 4),
(501, 62, 3, 4),
(502, 62, 4, 4),
(503, 62, 5, 4),
(504, 62, 6, 4),
(505, 62, 7, 4),
(506, 62, 10, 2),
(507, 62, 2, 2),
(508, 62, 3, 2),
(509, 62, 4, 2),
(510, 62, 5, 2),
(511, 62, 6, 2),
(512, 62, 7, 2),
(513, 63, 2, 6),
(514, 63, 2, 4),
(515, 63, 2, 2),
(516, 63, 7, 6),
(517, 63, 7, 4),
(518, 63, 7, 2),
(519, 64, 9, 7),
(520, 65, 2, 9),
(521, 65, 4, 9),
(522, 65, 5, 9),
(523, 65, 7, 9),
(524, 66, 4, 10),
(525, 66, 5, 10),
(526, 67, 1, 7),
(527, 67, 1, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_voluntariado`);

--
-- Indices de la tabla `ongs`
--
ALTER TABLE `ongs`
  ADD PRIMARY KEY (`id_ong`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `rifa`
--
ALTER TABLE `rifa`
  ADD PRIMARY KEY (`id_rifa`);

--
-- Indices de la tabla `voluntariado`
--
ALTER TABLE `voluntariado`
  ADD PRIMARY KEY (`id_voluntariado`),
  ADD KEY `ong_voluntariado` (`ong_voluntariado`),
  ADD KEY `lugar_voluntariado` (`lugar_voluntariado`),
  ADD KEY `tipo_voluntariado` (`tipo_voluntariado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id_voluntariado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `ongs`
--
ALTER TABLE `ongs`
  MODIFY `id_ong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `rifa`
--
ALTER TABLE `rifa`
  MODIFY `id_rifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `voluntariado`
--
ALTER TABLE `voluntariado`
  MODIFY `id_voluntariado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
