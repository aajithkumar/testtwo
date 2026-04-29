-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2026 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeustrader_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `google2fa_verify` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `ipaddress` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `twofastatus` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `google2fa_secret`, `google2fa_verify`, `type`, `ipaddress`, `status`, `twofastatus`, `created_at`, `updated_at`) VALUES
(1, 'Root Admin', 'zeus@mlmprotec.com', '$2y$10$RG8m.VUFB4qJjLCWc4LNe.qcbXns9kQkbZgn1LSYn0aEOUGsCPVv.', 'MJYGSECEWH6X3FJ3', 1, 1, NULL, 0, 1, '2020-12-04 11:02:36', '2025-08-21 18:15:26'),
(2, 'TiffanyGonzalez', 'tiffany@mlmprotec.com', '$2y$10$hMTgynPnhWRXClcELBIMk.F5o/v264G3A/iZI7zsjRnidxTUKxjEC', NULL, NULL, 2, '2601:900:8200:8730:c1d9:cfc7:80d4:f184, 2601:900:8200:8730:c1d9:cfc7:80d4:f184', 0, 1, '2025-06-03 23:03:46', '2025-06-05 14:05:20'),
(3, 'JamaryAhnee', 'jamary@mlmprotec.com', '$2y$10$Pfa/aDn2.Q3V5gBydbIH8e990FXbj8NIMYtEpqAw9fcZbMAk2Z4OC', 'WOAOJDP4L4FAE2N2', 1, 2, '2601:900:8200:8730:c1d9:cfc7:80d4:f184, 2601:900:8200:8730:c1d9:cfc7:80d4:f184', 0, 1, '2025-06-03 23:05:05', '2025-06-05 14:04:22'),
(4, 'ReneGreenough', 'rene@mydailychoice.com', '$2y$10$B.JKspLknigtXmR.7qcL.u2LW5FtGEVqpOFOoUxwsmnTmO7.rFEqq', 'CYQWHSKDM6V7A72G', 1, 2, '2601:900:8200:8730:c1d9:cfc7:80d4:f184, 2601:900:8200:8730:c1d9:cfc7:80d4:f184', 0, 1, '2025-06-03 23:06:25', '2025-06-05 14:03:08'),
(5, 'ChaseCampos', 'chase@mlmprotec.com', '$2y$10$RruRcaC3J9d5VqoGrN/XAeeaDwNKSrIzaOf9TOv9.Q.RDZCxiXqg6', 'ZN7NSDEQQ55HUXHH', 1, 2, '2601:900:8200:8730:c45f:6929:a28:6d40, 2601:900:8200:8730:c45f:6929:a28:6d40', 0, 1, '2025-07-07 15:14:22', '2025-07-07 17:31:37'),
(6, 'DaniellaTalento', 'Daniella@mlmprotec.com', '$2y$10$OaB6rMe3AiIYLS81rfrHMuEmCrnAG4xfu7/cDVQ.URDHObbtxEOzO', 'SMYW3MWUTFJFNYI6', 1, 2, '2601:900:8200:8730:c45f:6929:a28:6d40, 2601:900:8200:8730:c45f:6929:a28:6d40', 0, 1, '2025-07-07 15:52:13', '2025-07-07 17:29:30'),
(7, 'Developer Check', 'test@mail.com', '$2y$10$KRpve2YP9xRHxf8vFcIIlOJHjO1R70J44XsRFvlGeAD2Wb7pG3nkm', 'P6NLDXDWLUDQNSJW', 1, 2, NULL, 0, 1, '2025-08-30 18:15:26', '2025-09-06 05:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_address`
--

CREATE TABLE `admin_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset` varchar(191) NOT NULL,
  `network` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(191) NOT NULL,
  `narcanru` text DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL,
  `tagno` varchar(70) DEFAULT '',
  `balance` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_address`
--

INSERT INTO `admin_address` (`id`, `asset`, `network`, `address`, `narcanru`, `label`, `tagno`, `balance`, `created_at`, `updated_at`) VALUES
(1, 'BTC', 'BTC', '1EVPMCq8kaTMDrggckKi8TkCwp58N49oGL', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(2, 'ETH', 'ETH', '0x228042b869f4042f3ae454e4795f3f7659a40273', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(3, 'XRP', 'XRP', 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(4, 'BNB', 'BNB', '0x228042b869f4042f3ae454e4795f3f7659a40273', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(5, 'TRX', 'TRX', 'TF5vKn2Tyc3DLQangCeLPqoev1Ew6czQzG', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(6, 'USDT', 'TRC20', 'TF5vKn2Tyc3DLQangCeLPqoev1Ew6czQzG', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(7, 'USDT', 'BEP20', '0x228042b869f4042f3ae454e4795f3f7659a40273', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(8, 'USDT', 'ERC20', '0x228042b869f4042f3ae454e4795f3f7659a40273', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09'),
(10, 'USDT', 'SPLTOKEN', 'BKnQRLPJZdfFyo8Mq2njhC8TfuPRpKiSCsxPNiTZ7RAz', NULL, NULL, '', 0, '2025-05-14 12:34:09', '2025-05-14 12:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank_details`
--

CREATE TABLE `admin_bank_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `coin` varchar(191) NOT NULL,
  `account` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_fee_wallet`
--

CREATE TABLE `admin_fee_wallet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coinname` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `narcanru` text NOT NULL,
  `fee` varchar(191) NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_fee_wallet`
--

INSERT INTO `admin_fee_wallet` (`id`, `coinname`, `address`, `narcanru`, `fee`, `balance`, `created_at`, `updated_at`) VALUES
(1, 'ETH', '0xc5eb592e767112910dbc957171846f7c4c1c8169', 'eyJpdiI6InZIOGFLeS9ZRWtXcnMwS0YxZzJjUmc9PSIsInZhbHVlIjoieXY5eURUbm1EQjhhL0pYMmg3ZmxPdXBCYTBvNmlUR1BvOEhUSW5WbStiTktpRTRXQ01NMHVQdzVkWW53c0RObXhiWFJZeWoySEJpU3UvQk5KSS9pOE1pdjBMeXJXc3VZb0dGZGdLY2s2ZlFhSjhLQ1hxWjJYRExMRG9xNGx1VVBCTWtTWDZ1Z3YzV2d0QzcwZGNmbUZkQWZSY0w1RENSaFJYdnRPclZkV3JyMEFLME5JVzZrWjgvQlFscW1rMndPIiwibWFjIjoiOThjNTY5MGY0NjhhZWNkZDJhYzVlMWE0YjM1ODJlYmNkMWQ4YWFiOGE0YWFiZDIwNTk3ZWEwNjQxYmMxMzYyZCIsInRhZyI6IiJ9,eyJpdiI6IjR6TVYvR1hJdjNQM1JEN0NaaDlHVGc9PSIsInZhbHVlIjoiTXlydGpFN01YRlJFZG94RGpvdlpwODIyOFFpWHdhU2MrUjlsWXl5OUJtWlIxSUF2aHRxeW9SdGlOeWE1YmJJMUVQSFI4YlExZWtJSTkxRE1NV2NJRm5ZVStNbm1QUGs1M0x2V3U4STcrRFk9IiwibWFjIjoiN2E5MTAxNjViMTZmYzg0NjY4MTAyNDhlNjVkNGRiMWQ2NzBiMDA4NGE0YTZjZDNmZTY2NTI3YjhlYTMxNDM2ZiIsInRhZyI6IiJ9', '0', 0.35138441127655, '2025-05-15 11:00:29', '2025-11-27 13:06:28'),
(2, 'BNB', '0x95f79be027f8fc12f794883137dfe05b6041966b', 'eyJpdiI6Ink0L084SDRCSkFIb3JNL1dnV1E5Y2c9PSIsInZhbHVlIjoiVklZZHhyRkQyb0JoQlpXY3JRY0NuNmNsSnhoeGFya2lvVlZ3bG82ZUNNTkE3eFFWb2h3MldkWFA3Q3VTT0txZDFZUktWcG5EV1pWb1U1c3Y2Z2N1c0ZEL2trNDEvSS9qRnFkRnVsNXJ3S3c9IiwibWFjIjoiZWZkZTdiY2MyZjEzYzU1YThkM2U3NTFlZjAxMjU1NDg5OTg0NDgxYzVhYTc5M2ViZGVkN2EwYTZkNmE2OTIwZiIsInRhZyI6IiJ9,eyJpdiI6InNIZXRSTVlPWWd0UjBGdzVrWGl2K1E9PSIsInZhbHVlIjoiVnFuOXJFN09ld21KTnNDd1dib2dRQXdqajBua0s2TFFFd2ZLOE1vUGRvZHJjQ09TSmMrR01kNGZnd3ZJS3hwY3FIdDlBZmN0Q3paN2w4SWVtODBFZzNUalNKLzRSVGdGMlJVQ2Y2TjBnWjEzRDFMUDl4Z3VVRUdBYm1BM3Y1NVpGcWxMcSs4bVErRFlYcVdlam5HVmoramdudmIwTVhqV2JXQ0c1M0ovRmdZUkVEcDlaSE9YRWkxTURVTFlTeE9uIiwibWFjIjoiZTRhYjQ5YWFkMDMwOTI3NTNkODNiNzU4ZGZlZWZlZjA5ODE0YWU1YTI5MTkyNmE4ZmY5ZTI3YmExM2M3ZTllYyIsInRhZyI6IiJ9', '0', 1.594629615, '2025-05-15 11:01:03', '2025-11-04 01:07:37'),
(3, 'TRX', 'TSJExownPGv7rVft7vw5ppeYsPWVJefLgn', 'eyJpdiI6IjVmcXNlQ0VDQlJxZUxrMGFnMzA1dVE9PSIsInZhbHVlIjoiajh0bUdxdjZadnh5VGRab2c5dFh6bTdiR0Q4dWtUTmRHOXFkeUFBWGJyRTkrbGhEOThrTFJ3dlliUFRPWHhSc0Nhb0RvK3hSc0J0YWZvZk1XV0ZVU1dBVDd2V29vYWtZWmlUY3FHOTRTc3c9IiwibWFjIjoiZTg5OTJiM2E3NzM5ZjI1MzlhODI4YmMzN2E0YTM4MWZmZTZjNjg0MTNjYzdlOGZlZmFkYjFhYjljNjY0ZTlhZiIsInRhZyI6IiJ9,eyJpdiI6Ind1MmQwQUdwU2FLR3ZJM3QrbmlGTkE9PSIsInZhbHVlIjoiQjF6TDhFUmVNN0dPTENwMGZwTjNGdW9YZ1BpSU5EWERZTC9FaWhhRHg0NEQwTGFRc0ZwTldCTGRmOGUySzZxbzdjTWRMejZDS3dSVkNEWGFCemEzck9aUVBlM1h0YjcwcEk0cE9kVmtyZ2YvY2tpNWJJNXIwUTVNMkVBbVI1bHZSelBGNEo2NGwrNkcvQjg1eTY0NElncjRacFNVUFVwM1Ava0d1b2grMXp4RC9DQ3puei9pOFZucmNXbUhCeDB4IiwibWFjIjoiYWZmNTIyNDI2YmQwNjA4NjdhZjkwMDBiM2RlMTRlOTIwZTk2YTk5YTVlM2ZjNzNhNjg4OWIxZTdhNjc0Njk4ZCIsInRhZyI6IiJ9,eyJpdiI6InJqRkJtOHgxMzZ2NmMyUkFabmc5MGc9PSIsInZhbHVlIjoid0JDTzRSZHZxbWRXMWRxd2grNEU2UkFvZTlDNDc2cThKblR5TWhGbDhtbDNrZHAyT1BtdmlrWTFCS3htY2IxdCIsIm1hYyI6ImZlNjZjOWQ5YTdkNDhkMGRiOTM5ZTdiZGNhYjIzYTExZjRiNjViNmQwZjY2MzQyYWEzNWYyNDA5OGJjMWMxODAiLCJ0YWciOiIifQ==', '0', 711.388737, '2025-05-15 11:01:37', '2025-11-29 01:06:44'),
(4, 'SOL', '3wfnXLEjF8SFfoqGVcA9BGce4vzYtJ7jbthp47NMvCGE', 'eyJpdiI6InRnMDJtT014dFBMZ0NqMUlUaUVaV0E9PSIsInZhbHVlIjoiU1IyVk9pOXVxOTZsWFBxWXgvY3BWTzl5RHBtcFBiZmJlYy9kRW9CWkF5MkY3VW1sWEIxODBvVENoMjV6LzNnUGhYbzNBaUJKeXlSekNjZDF1dTBUeHc9PSIsIm1hYyI6IjBmMjUzZjE5ZGFmODU2NDM4NGQ1NjExZWFjOGE5NTg5NjNhZTNhMTYwYzQzZGFjYjE2ZWI2N2VmODhiOTcyOGEiLCJ0YWciOiIifQ==,eyJpdiI6ImUyb3huRlA3NkNCOERuZ3JNY1IrN1E9PSIsInZhbHVlIjoieVJHTkR3N3crR283VjJlaUNoK3U1cXRmTGtuaG0rL2RDSjF4cTUyNDVTUXR0SHVtVjZpbWxSU05FUDBRNGRMOWgyRm9yaHM1ZnBTdHhNZG8yQjd2b1JmUndobktnWnB0MzRoQmR1ZGNuNVBRYlBLaTR6LzJzYmNxNjNZWlc5OWQ3ZmlXc1NkblBlZ01LK3pqVTFsZmJZYWZhS20zY2pSTGRUaW9CVThMU0JMN25URTc0OGt0eUJXVTdTbE9nUnU2Mk1IMXlLSXVIOW53eUxTcUwrUGsrcGxxeTl6TjVpaTJwMjBnYW8rdnE0SG9WSW5PSzJNeVF5N2thRVRMMDR0L2E2ZjkwOVBUamJsdzhOODJBUFJJQmJHL25XbVd4NTVqdlVWb1BMYld2WUtnUWlzUHNkZFluYU9uQlhPdi9CVGMiLCJtYWMiOiI3YTcyNTc5NmU0MWQxMjVhZDNjOGI1NGFkZjlkNmMwYjEzN2FmZTc1NmM4Y2QxMWEyZjQ2Zjc1Y2E4ZTc4N2M4IiwidGFnIjoiIn0=', '0', 0, '2025-09-25 10:18:52', '2025-09-25 10:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `adm_cryptotransactions`
--

CREATE TABLE `adm_cryptotransactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `fuid` bigint(20) DEFAULT NULL,
  `tuid` bigint(20) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `txtype` varchar(191) DEFAULT NULL,
  `txid` varchar(191) DEFAULT NULL,
  `fiat_trans_id` bigint(20) DEFAULT NULL,
  `from_addr` varchar(191) DEFAULT NULL,
  `to_addr` varchar(191) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `confirmation` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `feestatus` int(11) NOT NULL DEFAULT 1,
  `nirvaki_nilai` int(11) NOT NULL DEFAULT 0,
  `usdt_deposit_type` varchar(191) DEFAULT NULL,
  `netfee` double DEFAULT NULL,
  `adminfee` double DEFAULT NULL,
  `totalamount` double NOT NULL DEFAULT 0,
  `gasprice` double NOT NULL DEFAULT 0,
  `coldwallettxid` varchar(191) NOT NULL DEFAULT '',
  `dest_tag` varchar(191) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `multinet_token_symbol` varchar(200) DEFAULT NULL,
  `multinet_token_network` varchar(200) DEFAULT NULL,
  `oldtxtype` varchar(199) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adm_fiat_transactions`
--

CREATE TABLE `adm_fiat_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED NOT NULL,
  `txid` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `type` enum('withdraw','deposit') DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `fee` double NOT NULL DEFAULT 0,
  `totalamount` double NOT NULL DEFAULT 0,
  `credit_amount` double NOT NULL DEFAULT 0,
  `proof` varchar(200) DEFAULT '',
  `paymenttype` varchar(100) DEFAULT '',
  `status` int(11) DEFAULT NULL,
  `nirvaki_nilai` int(11) DEFAULT NULL,
  `account_name` varchar(120) DEFAULT '',
  `account_no` varchar(100) DEFAULT '',
  `bank_name` varchar(120) DEFAULT '',
  `bank_branch` varchar(120) DEFAULT '',
  `bank_address` varchar(200) DEFAULT '',
  `swift_code` varchar(120) DEFAULT '',
  `branch_code` varchar(120) DEFAULT '',
  `remarks` varchar(300) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_wallet_transactions`
--

CREATE TABLE `fee_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `txtype` varchar(191) DEFAULT NULL,
  `txid` varchar(191) DEFAULT NULL,
  `from_addr` varchar(191) DEFAULT NULL,
  `to_addr` varchar(191) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `credit_amount` double DEFAULT NULL,
  `confirmation` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `netfee` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fireblocks_gas_station`
--

CREATE TABLE `fireblocks_gas_station` (
  `id` bigint(20) NOT NULL,
  `asset_id` varchar(50) DEFAULT '',
  `gas_threshold` double DEFAULT 0,
  `gas_cap` double DEFAULT 0,
  `max_gas_price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fireblocks_gas_station`
--

INSERT INTO `fireblocks_gas_station` (`id`, `asset_id`, `gas_threshold`, `gas_cap`, `max_gas_price`, `created_at`, `updated_at`) VALUES
(1, 'ETH', 0.005, 0.01, NULL, NULL, NULL),
(2, 'BNB_BSC', 0.005, 0.01, NULL, NULL, NULL),
(3, 'TRX', 0.005, 0.01, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fireblocks_wallet_address_det`
--

CREATE TABLE `fireblocks_wallet_address_det` (
  `id` bigint(20) NOT NULL,
  `ref_walletid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `token` varchar(200) NOT NULL DEFAULT '',
  `network` varchar(200) NOT NULL DEFAULT '',
  `mukavari` varchar(200) NOT NULL DEFAULT '',
  `balance` double NOT NULL DEFAULT 0,
  `payment_id` text NOT NULL,
  `fireblocks_asset_id` varchar(150) DEFAULT '',
  `fireblocks_deposit_address` varchar(200) DEFAULT '',
  `fireblocks_deposit_tag` varchar(200) DEFAULT '',
  `fireblocks_deposit_legacy_address` varchar(200) DEFAULT '',
  `fireblocks_deposit_enterprise_address` varchar(200) DEFAULT '',
  `fireblocks_deposit_bip44_address_index` varchar(200) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gasprice`
--

CREATE TABLE `gasprice` (
  `id` int(11) NOT NULL,
  `fee` double NOT NULL DEFAULT 0,
  `gasprice` double NOT NULL DEFAULT 0,
  `ethgaslimit` double NOT NULL DEFAULT 21000,
  `ethfee` double NOT NULL DEFAULT 0,
  `usdtgaslimit` double NOT NULL DEFAULT 60000,
  `usdtfee` double NOT NULL DEFAULT 0,
  `tokengaslimit` double NOT NULL DEFAULT 100000,
  `tokenfee` double NOT NULL DEFAULT 0,
  `userfee_gaslimit` double NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gasprice`
--

INSERT INTO `gasprice` (`id`, `fee`, `gasprice`, `ethgaslimit`, `ethfee`, `usdtgaslimit`, `usdtfee`, `tokengaslimit`, `tokenfee`, `userfee_gaslimit`, `created_at`, `updated_at`) VALUES
(1, 2054041601, 2054041601, 21000, 0.000043134873621, 80000, 0.00016432332808, 80000, 0.00016432332808, 80000, '2022-12-17 08:36:39', '2025-11-27 09:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(62, 'default', '{\"uuid\":\"7f258be4-0b4d-487c-bcd1-2ba8fadaf5bd\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4745\\\";s:6:\\\"userid\\\";s:1:\\\"4\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:724;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:32:\\\"deenadhayalan.pixelweb@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1756905061, 1756905061),
(63, 'default', '{\"uuid\":\"bd75f39f-da03-4a92-b8ff-6b531ee62cfb\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6422\\\";s:6:\\\"userid\\\";s:1:\\\"4\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:743;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:32:\\\"deenadhayalan.pixelweb@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1757135368, 1757135368),
(64, 'default', '{\"uuid\":\"06a586bd-7595-4a55-97b9-69d31383b39a\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6422\\\";s:6:\\\"userid\\\";s:1:\\\"4\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:744;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:32:\\\"deenadhayalan.pixelweb@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1757135851, 1757135851),
(65, 'default', '{\"uuid\":\"2dd95eda-fba1-4682-9bff-a9c22c87883a\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4402\\\";s:6:\\\"userid\\\";s:3:\\\"212\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:99;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"debbie.abibula@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760628297, 1760628297),
(66, 'default', '{\"uuid\":\"47712bcd-3957-4362-b336-9a882709c1ed\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT3788\\\";s:6:\\\"userid\\\";s:4:\\\"2352\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:100;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"kelshalldesmond@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760628416, 1760628416),
(67, 'default', '{\"uuid\":\"aba8bb93-6b84-48bb-b1f0-bfebb03d832f\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT2431\\\";s:6:\\\"userid\\\";s:4:\\\"1316\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:101;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"paukethomas@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760628455, 1760628455),
(68, 'default', '{\"uuid\":\"bc16603b-7394-45fd-b847-2b04e038cfa7\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT5133\\\";s:6:\\\"userid\\\";s:4:\\\"2386\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:102;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"jacoblindberg77@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760629387, 1760629387),
(69, 'default', '{\"uuid\":\"5f4211f2-b70c-4416-ae39-b3793541b6b5\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT3986\\\";s:6:\\\"userid\\\";s:4:\\\"2054\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:103;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"mototradecenter@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760629501, 1760629501),
(70, 'default', '{\"uuid\":\"1edb2bca-5f43-48b7-94ed-ddf6c8cc5dcd\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT5839\\\";s:6:\\\"userid\\\";s:4:\\\"1389\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:104;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"leonardotavares2003@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760629582, 1760629582),
(71, 'default', '{\"uuid\":\"31ce8f6f-5545-4cc1-bd11-7668c5f601f7\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4738\\\";s:6:\\\"userid\\\";s:3:\\\"314\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:105;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"shusharya@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760629709, 1760629709),
(72, 'default', '{\"uuid\":\"c0ce62d2-c03d-4f86-b487-d9e7f23eff46\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT2623\\\";s:6:\\\"userid\\\";s:3:\\\"212\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:108;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"debbie.abibula@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760650264, 1760650264),
(73, 'default', '{\"uuid\":\"05923590-2b69-4668-b59b-3636170c2f20\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT2425\\\";s:6:\\\"userid\\\";s:4:\\\"1754\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:109;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"alexanderseidl@icloud.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760734601, 1760734601),
(74, 'default', '{\"uuid\":\"dee415e7-c79b-4f7d-a654-94aba54db323\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4791\\\";s:6:\\\"userid\\\";s:4:\\\"3796\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:110;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"joyaruru@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1760734641, 1760734641),
(75, 'default', '{\"uuid\":\"4a2fb3ae-f373-44fe-a956-75284de409c6\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT3547\\\";s:6:\\\"userid\\\";s:4:\\\"1996\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:116;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"msifora@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761014007, 1761014007),
(76, 'default', '{\"uuid\":\"04f1eb25-3258-495e-a788-bb4f62a0c7ed\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8915\\\";s:6:\\\"userid\\\";s:4:\\\"1320\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:117;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"samuele2@aol.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761014088, 1761014088),
(77, 'default', '{\"uuid\":\"649bcffb-37dc-4ebd-b317-7c7dddadc037\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT9265\\\";s:6:\\\"userid\\\";s:4:\\\"2899\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:118;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"robertwn247@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761014179, 1761014179),
(78, 'default', '{\"uuid\":\"5bf043d0-7f48-421f-92c5-0f82e66580b9\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8684\\\";s:6:\\\"userid\\\";s:3:\\\"157\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:122;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:29:\\\"schneidermartin1988@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761108530, 1761108530),
(79, 'default', '{\"uuid\":\"74dcbf45-6fdb-412c-980c-69ab926def08\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT9349\\\";s:6:\\\"userid\\\";s:4:\\\"3880\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:123;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"deja.barry@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761108568, 1761108568),
(80, 'default', '{\"uuid\":\"59cf9392-4a33-41be-9248-761da090405b\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8743\\\";s:6:\\\"userid\\\";s:4:\\\"2594\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:124;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"edwardscdom@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761108602, 1761108602),
(81, 'default', '{\"uuid\":\"1c24acff-e867-41ab-81ee-8fcc00b1ee77\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT9349\\\";s:6:\\\"userid\\\";s:4:\\\"3880\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:126;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"deja.barry@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761150502, 1761150502),
(82, 'default', '{\"uuid\":\"41a81149-83e2-4d37-bd87-bcc7572e4da8\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6692\\\";s:6:\\\"userid\\\";s:4:\\\"3780\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:129;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"doansaygieder99@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761265222, 1761265222),
(83, 'default', '{\"uuid\":\"f70409b3-7951-4639-b540-81d7b613f41a\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6692\\\";s:6:\\\"userid\\\";s:4:\\\"3780\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:130;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"doansaygieder99@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761265244, 1761265244),
(84, 'default', '{\"uuid\":\"8d6d39e8-f3f7-478a-8bfc-46ba924c4f8b\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4961\\\";s:6:\\\"userid\\\";s:4:\\\"3253\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:132;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"afaniran@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761451565, 1761451565),
(85, 'default', '{\"uuid\":\"befa4156-bc3f-4018-87bf-710f7d4d16f5\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6455\\\";s:6:\\\"userid\\\";s:4:\\\"1316\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:137;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"paukethomas@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761528935, 1761528935),
(86, 'default', '{\"uuid\":\"d88a92aa-3fba-4886-8b6c-32100172e0ff\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4659\\\";s:6:\\\"userid\\\";s:4:\\\"1556\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:154;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"funmifavoured95@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761947209, 1761947209),
(87, 'default', '{\"uuid\":\"0d66d919-4f79-4786-a279-90f4bded7653\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8734\\\";s:6:\\\"userid\\\";s:3:\\\"363\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:155;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"bognarthinkpad@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761947804, 1761947804),
(88, 'default', '{\"uuid\":\"0c9bc730-caad-4134-a78c-3c9b370b3050\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4839\\\";s:6:\\\"userid\\\";s:3:\\\"620\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:156;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:26:\\\"pondexterfelicia@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761947879, 1761947879),
(89, 'default', '{\"uuid\":\"1c1210fd-a63c-418e-8310-1e3dee747d1e\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT5205\\\";s:6:\\\"userid\\\";s:4:\\\"3780\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:157;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"doansaygieder99@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761947927, 1761947927),
(90, 'default', '{\"uuid\":\"93550974-10ee-44e3-aecb-a8cd754221a2\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT2276\\\";s:6:\\\"userid\\\";s:4:\\\"1441\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:158;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"amabro2011@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761948107, 1761948107),
(91, 'default', '{\"uuid\":\"2c63eab7-e217-4186-a9b3-e595d58dc16e\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6383\\\";s:6:\\\"userid\\\";s:4:\\\"2355\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:159;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:33:\\\"incendiaxmultiservicios@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1761948124, 1761948124),
(92, 'default', '{\"uuid\":\"5e282e13-4412-4300-a5f8-70f9caf79919\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT9644\\\";s:6:\\\"userid\\\";s:3:\\\"899\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:166;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"vicpeter@protonmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762215221, 1762215221),
(93, 'default', '{\"uuid\":\"efa282dc-7b0e-409a-af57-edbf79d70685\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT1845\\\";s:6:\\\"userid\\\";s:3:\\\"207\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:167;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"amy.r.boatman@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762215291, 1762215291),
(94, 'default', '{\"uuid\":\"7a6cee95-1b8b-4daf-b9c1-dd173659f56d\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4762\\\";s:6:\\\"userid\\\";s:4:\\\"3949\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:168;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"petar.galetic@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762215353, 1762215353);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(95, 'default', '{\"uuid\":\"cee6fd0b-5e5f-4379-9ce0-9dbbcbfbb6f2\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT4659\\\";s:6:\\\"userid\\\";s:4:\\\"1556\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:169;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"funmifavoured95@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762215435, 1762215435),
(96, 'default', '{\"uuid\":\"e61e06f9-e243-4b74-89f1-497d2a85d530\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT1372\\\";s:6:\\\"userid\\\";s:4:\\\"1537\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:177;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:25:\\\"haddykounlabout@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762553996, 1762553996),
(97, 'default', '{\"uuid\":\"4b794e02-3a19-4316-a45f-d486736a856b\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6976\\\";s:6:\\\"userid\\\";s:3:\\\"576\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:178;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"kristoffsmith9@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762554076, 1762554076),
(98, 'default', '{\"uuid\":\"00dfdb76-64c4-4a96-b4f7-091aba25b2ad\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6667\\\";s:6:\\\"userid\\\";s:3:\\\"368\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:179;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"trinigirlbiz@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762554130, 1762554130),
(99, 'default', '{\"uuid\":\"ed49e901-d0cc-43eb-8abb-068eddb6b9b1\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8880\\\";s:6:\\\"userid\\\";s:4:\\\"1466\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:184;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"elizahulik@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762899763, 1762899763),
(100, 'default', '{\"uuid\":\"932bb5c1-c573-4f63-af70-aea8294e38d1\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8058\\\";s:6:\\\"userid\\\";s:4:\\\"3076\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:185;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:28:\\\"dedobbeleergunther@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762899832, 1762899832),
(101, 'default', '{\"uuid\":\"7ce7477c-7ba1-4e14-9567-ab26ad40a5a2\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT6417\\\";s:6:\\\"userid\\\";s:4:\\\"1571\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:186;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"deinerfolgsweg@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1762899958, 1762899958),
(102, 'default', '{\"uuid\":\"a0ef183a-0625-4068-be6b-38e27b8601cd\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT2839\\\";s:6:\\\"userid\\\";s:1:\\\"6\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:194;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"haratilker@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1763075455, 1763075455),
(103, 'default', '{\"uuid\":\"7ae79d5f-301d-4b4c-b860-55b8037766f8\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT9927\\\";s:6:\\\"userid\\\";s:4:\\\"3698\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:195;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"aniltransport@yahoo.fr\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1763075602, 1763075602),
(104, 'default', '{\"uuid\":\"6b51c50d-32f4-4bb4-8762-899c26327b69\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT8644\\\";s:6:\\\"userid\\\";s:4:\\\"1440\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:196;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:31:\\\"cgempreendedordigital@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1763075648, 1763075648),
(105, 'default', '{\"uuid\":\"4d7f28d1-ff32-4c50-8d09-57af41fef02f\",\"displayName\":\"App\\\\Mail\\\\TicketSentUser\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\TicketSentUser\\\":6:{s:7:\\\"subject\\\";s:33:\\\"Admin reply for your ticket raise\\\";s:8:\\\"ticketId\\\";s:6:\\\"ZT5472\\\";s:6:\\\"userid\\\";s:3:\\\"188\\\";s:10:\\\"ticketChat\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:21:\\\"App\\\\Models\\\\TicketChat\\\";s:2:\\\"id\\\";i:199;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:6:\\\"mysql2\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"gsmiljanec@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1763180987, 1763180987);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_blocks`
--

CREATE TABLE `transaction_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `coin` varchar(10) NOT NULL,
  `blocks` int(11) NOT NULL,
  `last_blocks` int(11) NOT NULL,
  `start_blocks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_blocks`
--

INSERT INTO `transaction_blocks` (`id`, `coin`, `blocks`, `last_blocks`, `start_blocks`, `created_at`, `updated_at`) VALUES
(1, 'BTC', 925681, 925680, 896816, '2025-05-15 11:07:37', '2025-11-29 07:50:03'),
(4, 'ETH', 22558385, 22587995, 22488138, '2025-05-15 11:13:09', '2025-06-06 07:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone_no` varchar(191) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `profileimg` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `twofa` varchar(191) DEFAULT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `google2fa_verify` int(11) NOT NULL DEFAULT 0,
  `email_verify` int(11) DEFAULT NULL,
  `kyc_verify` int(11) NOT NULL DEFAULT 0,
  `profile_otp` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL,
  `verifyToken` varchar(191) DEFAULT NULL,
  `is_logged` int(11) DEFAULT NULL,
  `ipaddr` longtext DEFAULT NULL,
  `device` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `type` enum('web','app') NOT NULL DEFAULT 'web',
  `is_address` tinyint(1) NOT NULL DEFAULT 0,
  `referral_id` varchar(191) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(60) NOT NULL,
  `swift_code` varchar(60) NOT NULL,
  `account_no` varchar(60) NOT NULL,
  `branch_street` varchar(60) NOT NULL,
  `branch_city` varchar(60) NOT NULL,
  `branch_zipcode` varchar(10) NOT NULL,
  `branch_country` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bch_addresses`
--

CREATE TABLE `user_bch_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cashaddress` text DEFAULT NULL,
  `legacyaddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bep20_addresses`
--

CREATE TABLE `user_bep20_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bnb_addresses`
--

CREATE TABLE `user_bnb_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_btc_addresses`
--

CREATE TABLE `user_btc_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `publickey` text DEFAULT NULL,
  `wif` text DEFAULT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_doge_addresses`
--

CREATE TABLE `user_doge_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `api_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_erc20_addresses`
--

CREATE TABLE `user_erc20_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_eth_addresses`
--

CREATE TABLE `user_eth_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `publickey` text DEFAULT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_kycs`
--

CREATE TABLE `user_kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) DEFAULT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `dob` date NOT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `id_type` varchar(191) DEFAULT NULL,
  `id_number` text DEFAULT NULL,
  `id_exp` date DEFAULT NULL,
  `front_img` varchar(191) DEFAULT NULL,
  `back_img` varchar(191) DEFAULT NULL,
  `selfie_img` varchar(191) DEFAULT NULL,
  `proofpaper` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ltc_addresses`
--

CREATE TABLE `user_ltc_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_matic_addresses`
--

CREATE TABLE `user_matic_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `publickey` text DEFAULT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `dashboard` varchar(191) DEFAULT NULL,
  `userlist` varchar(191) DEFAULT NULL,
  `kyc` varchar(191) DEFAULT NULL,
  `assetsetting` varchar(191) DEFAULT NULL,
  `tradesetting` text DEFAULT NULL,
  `futures_tradesetting` varchar(255) DEFAULT NULL,
  `adminwallet` varchar(191) DEFAULT NULL,
  `admincommission` varchar(100) DEFAULT NULL,
  `feewallet` text DEFAULT NULL,
  `adminbank` text DEFAULT NULL,
  `ieo` varchar(100) DEFAULT NULL,
  `subadmin` varchar(191) DEFAULT NULL,
  `depositlist` varchar(191) DEFAULT NULL,
  `withdrawlist` varchar(191) DEFAULT NULL,
  `tradehistroylist` varchar(191) DEFAULT NULL,
  `support` varchar(191) DEFAULT NULL,
  `kycsettings` varchar(191) DEFAULT NULL,
  `cms_settings` varchar(191) DEFAULT NULL,
  `contact` varchar(191) DEFAULT NULL,
  `security_setup` varchar(191) DEFAULT NULL,
  `subscribe` text DEFAULT NULL,
  `liquiditysettings` text DEFAULT NULL,
  `referralsetting` varchar(200) DEFAULT NULL,
  `livepricedetails` text DEFAULT NULL,
  `newsevent` text DEFAULT NULL,
  `groupchat` text DEFAULT NULL,
  `p2p` varchar(191) DEFAULT NULL,
  `copy_trade` varchar(255) DEFAULT NULL,
  `launchpad` varchar(191) DEFAULT NULL,
  `applyieo` varchar(191) DEFAULT NULL,
  `competition` varchar(191) DEFAULT NULL,
  `loan` varchar(140) DEFAULT '',
  `savings_management` varchar(191) DEFAULT '',
  `whitelistaddress` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `dashboard`, `userlist`, `kyc`, `assetsetting`, `tradesetting`, `futures_tradesetting`, `adminwallet`, `admincommission`, `feewallet`, `adminbank`, `ieo`, `subadmin`, `depositlist`, `withdrawlist`, `tradehistroylist`, `support`, `kycsettings`, `cms_settings`, `contact`, `security_setup`, `subscribe`, `liquiditysettings`, `referralsetting`, `livepricedetails`, `newsevent`, `groupchat`, `p2p`, `copy_trade`, `launchpad`, `applyieo`, `competition`, `loan`, `savings_management`, `whitelistaddress`, `created_at`, `updated_at`) VALUES
(1, 1, 'kyc_view,withdraw_view,support_view,user_view', 'read,write', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', NULL, '2020-12-23 00:10:27', '2020-12-23 00:10:27'),
(2, 2, 'kyc_view,withdraw_view,support_view', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read', 'read', NULL, '', 'read,write,delete', NULL, 'read,write', 'read,write', 'read,write', 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'read,write,delete', NULL, '2025-06-03 23:03:46', '2025-06-05 14:05:20'),
(3, 3, 'kyc_view,withdraw_view,support_view', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read', 'read', NULL, '', 'read,write', NULL, 'read,write', 'read,write', 'read,write', 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'read,write', NULL, '2025-06-03 23:05:05', '2025-06-05 14:04:22'),
(4, 4, 'kyc_view,withdraw_view,support_view', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read', 'read', NULL, '', 'read,write', NULL, 'read,write', 'read,write', 'read,write', 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'read,write', NULL, '2025-06-03 23:06:25', '2025-06-05 14:03:08'),
(5, 5, 'kyc_view,withdraw_view,support_view', 'read,write', 'read,write', 'read,write', 'read', 'read', 'read', 'read', NULL, '', 'read', NULL, 'read', 'read', 'read', 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, 'read', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'read', NULL, '2025-07-07 15:14:22', '2025-07-07 17:30:24'),
(6, 6, 'kyc_view,withdraw_view,support_view', 'read,write', 'read,write', 'read,write', 'read', 'read', 'read', 'read', NULL, '', 'read', NULL, 'read', 'read', 'read', 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, 'read,write', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'read', NULL, '2025-07-07 15:52:13', '2025-07-07 15:52:13'),
(7, 7, 'kyc_view,withdraw_view,support_view,user_view', 'read,write', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', 'read,write,delete', NULL, '2020-12-23 00:10:27', '2020-12-23 00:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_sol_addresses`
--

CREATE TABLE `user_sol_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `publickey` text DEFAULT NULL,
  `wif` text DEFAULT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_spltoken_addresses`
--

CREATE TABLE `user_spltoken_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_trc20_addresses`
--

CREATE TABLE `user_trc20_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_trx_addresses`
--

CREATE TABLE `user_trx_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `publickey` text DEFAULT NULL,
  `wif` text DEFAULT NULL,
  `narcanru` text NOT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_withdraw_address_details`
--

CREATE TABLE `user_withdraw_address_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_xrp_addresses`
--

CREATE TABLE `user_xrp_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `narcanru` text NOT NULL,
  `xrp_tag` text DEFAULT NULL,
  `balance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_xrp_addresses`
--

INSERT INTO `user_xrp_addresses` (`id`, `user_id`, `address`, `narcanru`, `xrp_tag`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '899988', '899988', 0, '2025-05-15 11:15:10', '2025-05-15 11:15:10'),
(2, 19, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '892018', '892018', 0, '2025-05-19 06:44:58', '2025-05-19 06:44:58'),
(3, 16, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '130632', '130632', 0, '2025-05-20 21:53:13', '2025-05-20 21:53:13'),
(4, 25, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '525471', '525471', 0, '2025-05-20 21:55:46', '2025-05-20 21:55:46'),
(5, 33, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '857666', '857666', 0, '2025-05-21 05:02:02', '2025-05-21 05:02:02'),
(6, 6, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '346645', '346645', 0, '2025-06-01 18:13:59', '2025-06-01 18:13:59'),
(7, 540, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '213774', '213774', 0, '2025-06-03 03:51:21', '2025-06-03 03:51:21'),
(8, 4, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '126804', '126804', 0, '2025-06-03 09:35:19', '2025-06-03 09:35:19'),
(9, 1426, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '681503', '681503', 0, '2025-06-05 15:48:56', '2025-06-05 15:48:56'),
(10, 1316, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '654412', '654412', 0, '2025-06-05 21:35:14', '2025-06-05 21:35:14'),
(11, 1623, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '984400', '984400', 0, '2025-06-06 10:46:56', '2025-06-06 10:46:56'),
(12, 1829, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '437410', '437410', 0, '2025-06-06 10:57:32', '2025-06-06 10:57:32'),
(13, 1830, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '357687', '357687', 0, '2025-06-06 11:02:47', '2025-06-06 11:02:47'),
(14, 1863, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '571696', '571696', 0, '2025-06-06 15:41:56', '2025-06-06 15:41:56'),
(15, 1161, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '689396', '689396', 0, '2025-06-07 11:14:53', '2025-06-07 11:14:53'),
(16, 1143, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '341497', '341497', 0, '2025-06-07 17:23:50', '2025-06-07 17:23:50'),
(17, 682, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '150589', '150589', 0, '2025-06-07 19:00:14', '2025-06-07 19:00:14'),
(18, 29, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '972209', '972209', 0, '2025-06-07 20:10:11', '2025-06-07 20:10:11'),
(19, 1365, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '527863', '527863', 0, '2025-06-09 22:40:37', '2025-06-09 22:40:37'),
(21, 2159, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '155809', '155809', 0, '2025-06-12 06:32:01', '2025-06-12 06:32:01'),
(22, 20, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '715168', '715168', 0, '2025-06-12 07:36:57', '2025-06-12 07:36:57'),
(23, 2165, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '818065', '818065', 0, '2025-06-12 12:16:32', '2025-06-12 12:16:32'),
(24, 2004, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '812312', '812312', 0, '2025-06-15 21:54:03', '2025-06-15 21:54:03'),
(25, 1304, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '513470', '513470', 0, '2025-06-17 11:19:19', '2025-06-17 11:19:19'),
(26, 244, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '940454', '940454', 0, '2025-06-18 02:32:09', '2025-06-18 02:32:09'),
(27, 1777, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '380986', '380986', 0, '2025-06-18 03:00:52', '2025-06-18 03:00:52'),
(28, 499, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '539540', '539540', 0, '2025-06-19 14:19:47', '2025-06-19 14:19:47'),
(29, 2262, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '558232', '558232', 0, '2025-06-20 19:43:37', '2025-06-20 19:43:37'),
(30, 2510, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '476996', '476996', 0, '2025-06-23 05:33:25', '2025-06-23 05:33:25'),
(31, 2255, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '992374', '992374', 0, '2025-06-23 17:04:08', '2025-06-23 17:04:08'),
(32, 1374, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '592114', '592114', 0, '2025-06-24 04:48:31', '2025-06-24 04:48:31'),
(33, 620, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '476607', '476607', 0, '2025-06-26 04:36:33', '2025-06-26 04:36:33'),
(34, 2915, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '897104', '897104', 0, '2025-07-17 20:11:24', '2025-07-17 20:11:24'),
(35, 67, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '167469', '167469', 0, '2025-07-18 01:40:41', '2025-07-18 01:40:41'),
(36, 1730, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '252054', '252054', 0, '2025-07-21 20:41:58', '2025-07-21 20:41:58'),
(37, 3087, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '470339', '470339', 0, '2025-07-26 17:02:11', '2025-07-26 17:02:11'),
(38, 2963, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '763260', '763260', 0, '2025-08-03 14:32:44', '2025-08-03 14:32:44'),
(39, 3358, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '897186', '897186', 0, '2025-08-04 16:13:22', '2025-08-04 16:13:22'),
(40, 1590, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '503468', '503468', 0, '2025-08-13 15:22:17', '2025-08-13 15:22:17'),
(41, 3505, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '927726', '927726', 0, '2025-08-18 15:02:35', '2025-08-18 15:02:35'),
(42, 1794, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '592264', '592264', 0, '2025-08-19 21:50:08', '2025-08-19 21:50:08'),
(43, 2253, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '570055', '570055', 0, '2025-09-22 13:07:07', '2025-09-22 13:07:07'),
(44, 3890, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '729636', '729636', 0, '2025-10-03 21:24:52', '2025-10-03 21:24:52'),
(45, 3996, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '658155', '658155', 0, '2025-10-08 06:43:26', '2025-10-08 06:43:26'),
(46, 4151, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '404869', '404869', 0, '2025-10-21 02:47:24', '2025-10-21 02:47:24'),
(47, 2664, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '505210', '505210', 0, '2025-10-21 21:39:17', '2025-10-21 21:39:17'),
(48, 332, 'ray3Wi3TEeqk74aCP56ENioMSaTCNUVoNv', '572061', '572061', 0, '2025-10-21 21:39:19', '2025-10-21 21:39:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_address`
--
ALTER TABLE `admin_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_bank_details`
--
ALTER TABLE `admin_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_fee_wallet`
--
ALTER TABLE `admin_fee_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adm_cryptotransactions`
--
ALTER TABLE `adm_cryptotransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cryptotransactions_uid_foreign` (`uid`);

--
-- Indexes for table `adm_fiat_transactions`
--
ALTER TABLE `adm_fiat_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_wallet_transactions`
--
ALTER TABLE `fee_wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fireblocks_gas_station`
--
ALTER TABLE `fireblocks_gas_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fireblocks_wallet_address_det`
--
ALTER TABLE `fireblocks_wallet_address_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gasprice`
--
ALTER TABLE `gasprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transaction_blocks`
--
ALTER TABLE `transaction_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bch_addresses`
--
ALTER TABLE `user_bch_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bep20_addresses`
--
ALTER TABLE `user_bep20_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bnb_addresses`
--
ALTER TABLE `user_bnb_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_btc_addresses`
--
ALTER TABLE `user_btc_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_doge_addresses`
--
ALTER TABLE `user_doge_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_erc20_addresses`
--
ALTER TABLE `user_erc20_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_eth_addresses`
--
ALTER TABLE `user_eth_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_kycs`
--
ALTER TABLE `user_kycs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_kycs_uid_foreign` (`uid`);

--
-- Indexes for table `user_ltc_addresses`
--
ALTER TABLE `user_ltc_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_matic_addresses`
--
ALTER TABLE `user_matic_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_sol_addresses`
--
ALTER TABLE `user_sol_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_spltoken_addresses`
--
ALTER TABLE `user_spltoken_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_trc20_addresses`
--
ALTER TABLE `user_trc20_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_trx_addresses`
--
ALTER TABLE `user_trx_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_withdraw_address_details`
--
ALTER TABLE `user_withdraw_address_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_xrp_addresses`
--
ALTER TABLE `user_xrp_addresses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_address`
--
ALTER TABLE `admin_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_bank_details`
--
ALTER TABLE `admin_bank_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_fee_wallet`
--
ALTER TABLE `admin_fee_wallet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adm_cryptotransactions`
--
ALTER TABLE `adm_cryptotransactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adm_fiat_transactions`
--
ALTER TABLE `adm_fiat_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_wallet_transactions`
--
ALTER TABLE `fee_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fireblocks_gas_station`
--
ALTER TABLE `fireblocks_gas_station`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fireblocks_wallet_address_det`
--
ALTER TABLE `fireblocks_wallet_address_det`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gasprice`
--
ALTER TABLE `gasprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_blocks`
--
ALTER TABLE `transaction_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bch_addresses`
--
ALTER TABLE `user_bch_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bep20_addresses`
--
ALTER TABLE `user_bep20_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bnb_addresses`
--
ALTER TABLE `user_bnb_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_btc_addresses`
--
ALTER TABLE `user_btc_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_doge_addresses`
--
ALTER TABLE `user_doge_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_erc20_addresses`
--
ALTER TABLE `user_erc20_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_eth_addresses`
--
ALTER TABLE `user_eth_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ltc_addresses`
--
ALTER TABLE `user_ltc_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_matic_addresses`
--
ALTER TABLE `user_matic_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_sol_addresses`
--
ALTER TABLE `user_sol_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_spltoken_addresses`
--
ALTER TABLE `user_spltoken_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_trc20_addresses`
--
ALTER TABLE `user_trc20_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_trx_addresses`
--
ALTER TABLE `user_trx_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_xrp_addresses`
--
ALTER TABLE `user_xrp_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
