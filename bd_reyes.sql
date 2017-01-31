/*
Navicat MySQL Data Transfer

Source Server         : BD_REYES
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : bd_reyes

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-01-30 18:19:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cat_categoria`
-- ----------------------------
DROP TABLE IF EXISTS `cat_categoria`;
CREATE TABLE `cat_categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_categoria
-- ----------------------------

-- ----------------------------
-- Table structure for `cat_foto`
-- ----------------------------
DROP TABLE IF EXISTS `cat_foto`;
CREATE TABLE `cat_foto` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `ruta` varchar(500) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_foto
-- ----------------------------

-- ----------------------------
-- Table structure for `cat_video`
-- ----------------------------
DROP TABLE IF EXISTS `cat_video`;
CREATE TABLE `cat_video` (
  `id_video` int(11) NOT NULL,
  `ruta` varchar(500) NOT NULL,
  `video` varchar(500) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cat_video
-- ----------------------------

-- ----------------------------
-- Table structure for `empresa`
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `mision` varchar(1000) NOT NULL,
  `vision` varchar(1000) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `num_tel` varchar(15) NOT NULL,
  `hora_servicio` varchar(10) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('1', 'LOS REYES', 'XXX', 'XXX', 'XXX', '', '', '');

-- ----------------------------
-- Table structure for `servicio`
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `servicio` varchar(500) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO `servicio` VALUES ('1', 'Cortinas', '');
INSERT INTO `servicio` VALUES ('2', 'Alfombras', '');
INSERT INTO `servicio` VALUES ('3', 'Persianas', '');

-- ----------------------------
-- Table structure for `serv_foto_video`
-- ----------------------------
DROP TABLE IF EXISTS `serv_foto_video`;
CREATE TABLE `serv_foto_video` (
  `id_serv_foto_video` int(11) NOT NULL AUTO_INCREMENT,
  `id_foto` int(11) DEFAULT NULL,
  `id_video` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_serv_foto_video`),
  KEY `id_video` (`id_video`),
  KEY `id_foto` (`id_foto`),
  CONSTRAINT `serv_foto_video_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `cat_video` (`id_video`),
  CONSTRAINT `serv_foto_video_ibfk_2` FOREIGN KEY (`id_foto`) REFERENCES `cat_foto` (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of serv_foto_video
-- ----------------------------
