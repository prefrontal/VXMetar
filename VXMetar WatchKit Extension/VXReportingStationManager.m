//
//  VXReportingStationManager.m
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "VXReportingStation.h"

#import "VXReportingStationManager.h"

// -----------------------------------------------------------------------

#pragma mark Private Declarations

@interface VXReportingStationManager ()

- (void) loadStations;

@end

// -----------------------------------------------------------------------

@implementation VXReportingStationManager

@synthesize stationList;

#pragma mark Singleton Methods

+ (id)sharedManager
{
    static VXReportingStationManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once (&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    
    return sharedMyManager;
}

- (id)init
{
    if (self = [super init])
    {
        stationList = [NSMutableArray new];
        [self loadStations];
    }
    
    return self;
}

- (void)dealloc
{
    // Should never be called, but just here for clarity really.
}

#pragma mark Station List Handling

- (void) loadStations
{
	VXReportingStation *KA08 = [VXReportingStation new];
	KA08.stationIdentifier = @"KA08";
	KA08.associatedCity = @"MARION";
	KA08.associatedState = @"AL";
	KA08.latitude = 32.5167;
	KA08.longitude = 87.3853;
	[stationList addObject:KA08];

	VXReportingStation *KAAA = [VXReportingStation new];
	KAAA.stationIdentifier = @"KAAA";
	KAAA.associatedCity = @"LINCOLN";
	KAAA.associatedState = @"IL";
	KAAA.latitude = 40.1586;
	KAAA.longitude = 89.335;
	[stationList addObject:KAAA];

	VXReportingStation *KAAF = [VXReportingStation new];
	KAAF.stationIdentifier = @"KAAF";
	KAAF.associatedCity = @"APALACHICOLA";
	KAAF.associatedState = @"FL";
	KAAF.latitude = 29.7275;
	KAAF.longitude = 85.0272;
	[stationList addObject:KAAF];

	VXReportingStation *KAAO = [VXReportingStation new];
	KAAO.stationIdentifier = @"KAAO";
	KAAO.associatedCity = @"WICHITA";
	KAAO.associatedState = @"KS";
	KAAO.latitude = 37.7475;
	KAAO.longitude = 97.2211;
	[stationList addObject:KAAO];

	VXReportingStation *KAAT = [VXReportingStation new];
	KAAT.stationIdentifier = @"KAAT";
	KAAT.associatedCity = @"ALTURAS";
	KAAT.associatedState = @"CA";
	KAAT.latitude = 41.4828;
	KAAT.longitude = 120.565;
	[stationList addObject:KAAT];

	VXReportingStation *KABE = [VXReportingStation new];
	KABE.stationIdentifier = @"KABE";
	KABE.associatedCity = @"ALLENTOWN";
	KABE.associatedState = @"PA";
	KABE.latitude = 40.6522;
	KABE.longitude = 75.4403;
	[stationList addObject:KABE];

	VXReportingStation *KABI = [VXReportingStation new];
	KABI.stationIdentifier = @"KABI";
	KABI.associatedCity = @"ABILENE";
	KABI.associatedState = @"TX";
	KABI.latitude = 32.4111;
	KABI.longitude = 99.6817;
	[stationList addObject:KABI];

	VXReportingStation *KABQ = [VXReportingStation new];
	KABQ.stationIdentifier = @"KABQ";
	KABQ.associatedCity = @"ALBUQUERQUE";
	KABQ.associatedState = @"NM";
	KABQ.latitude = 35.04;
	KABQ.longitude = 106.609;
	[stationList addObject:KABQ];

	VXReportingStation *KABR = [VXReportingStation new];
	KABR.stationIdentifier = @"KABR";
	KABR.associatedCity = @"ABERDEEN";
	KABR.associatedState = @"SD";
	KABR.latitude = 45.4489;
	KABR.longitude = 98.4217;
	[stationList addObject:KABR];

	VXReportingStation *KABY = [VXReportingStation new];
	KABY.stationIdentifier = @"KABY";
	KABY.associatedCity = @"ALBANY";
	KABY.associatedState = @"GA";
	KABY.latitude = 31.5353;
	KABY.longitude = 84.1944;
	[stationList addObject:KABY];

	VXReportingStation *KACB = [VXReportingStation new];
	KACB.stationIdentifier = @"KACB";
	KACB.associatedCity = @"BELLAIRE";
	KACB.associatedState = @"MI";
	KACB.latitude = 44.9883;
	KACB.longitude = 85.1983;
	[stationList addObject:KACB];

	VXReportingStation *KACJ = [VXReportingStation new];
	KACJ.stationIdentifier = @"KACJ";
	KACJ.associatedCity = @"AMERICUS";
	KACJ.associatedState = @"GA";
	KACJ.latitude = 32.1106;
	KACJ.longitude = 84.1886;
	[stationList addObject:KACJ];

	VXReportingStation *KACK = [VXReportingStation new];
	KACK.stationIdentifier = @"KACK";
	KACK.associatedCity = @"NANTUCKET";
	KACK.associatedState = @"MA";
	KACK.latitude = 41.2528;
	KACK.longitude = 70.06;
	[stationList addObject:KACK];

	VXReportingStation *KACP = [VXReportingStation new];
	KACP.stationIdentifier = @"KACP";
	KACP.associatedCity = @"OAKDALE";
	KACP.associatedState = @"LA";
	KACP.latitude = 30.7503;
	KACP.longitude = 92.6883;
	[stationList addObject:KACP];

	VXReportingStation *KACQ = [VXReportingStation new];
	KACQ.stationIdentifier = @"KACQ";
	KACQ.associatedCity = @"WASECA";
	KACQ.associatedState = @"MN";
	KACQ.latitude = 44.0733;
	KACQ.longitude = 93.5528;
	[stationList addObject:KACQ];

	VXReportingStation *KACT = [VXReportingStation new];
	KACT.stationIdentifier = @"KACT";
	KACT.associatedCity = @"WACO";
	KACT.associatedState = @"TX";
	KACT.latitude = 31.6111;
	KACT.longitude = 97.2303;
	[stationList addObject:KACT];

	VXReportingStation *KACV = [VXReportingStation new];
	KACV.stationIdentifier = @"KACV";
	KACV.associatedCity = @"ARCATA/EUREKA";
	KACV.associatedState = @"CA";
	KACV.latitude = 40.9781;
	KACV.longitude = 124.109;
	[stationList addObject:KACV];

	VXReportingStation *KACY = [VXReportingStation new];
	KACY.stationIdentifier = @"KACY";
	KACY.associatedCity = @"ATLANTIC CITY";
	KACY.associatedState = @"NJ";
	KACY.latitude = 39.4575;
	KACY.longitude = 74.5769;
	[stationList addObject:KACY];

	VXReportingStation *KADC = [VXReportingStation new];
	KADC.stationIdentifier = @"KADC";
	KADC.associatedCity = @"WADENA";
	KADC.associatedState = @"MN";
	KADC.latitude = 46.4497;
	KADC.longitude = 95.2106;
	[stationList addObject:KADC];

	VXReportingStation *KADF = [VXReportingStation new];
	KADF.stationIdentifier = @"KADF";
	KADF.associatedCity = @"ARKADELPHIA";
	KADF.associatedState = @"AR";
	KADF.latitude = 34.0997;
	KADF.longitude = 93.0658;
	[stationList addObject:KADF];

	VXReportingStation *KADG = [VXReportingStation new];
	KADG.stationIdentifier = @"KADG";
	KADG.associatedCity = @"ADRIAN";
	KADG.associatedState = @"MI";
	KADG.latitude = 41.8692;
	KADG.longitude = 84.0747;
	[stationList addObject:KADG];

	VXReportingStation *KADH = [VXReportingStation new];
	KADH.stationIdentifier = @"KADH";
	KADH.associatedCity = @"ADA";
	KADH.associatedState = @"OK";
	KADH.latitude = 34.8042;
	KADH.longitude = 96.6711;
	[stationList addObject:KADH];

	VXReportingStation *KADM = [VXReportingStation new];
	KADM.stationIdentifier = @"KADM";
	KADM.associatedCity = @"ARDMORE";
	KADM.associatedState = @"OK";
	KADM.latitude = 34.3031;
	KADM.longitude = 97.0194;
	[stationList addObject:KADM];

	VXReportingStation *KADS = [VXReportingStation new];
	KADS.stationIdentifier = @"KADS";
	KADS.associatedCity = @"DALLAS";
	KADS.associatedState = @"TX";
	KADS.latitude = 32.9683;
	KADS.longitude = 96.8364;
	[stationList addObject:KADS];

	VXReportingStation *KADU = [VXReportingStation new];
	KADU.stationIdentifier = @"KADU";
	KADU.associatedCity = @"AUDUBON";
	KADU.associatedState = @"IA";
	KADU.latitude = 41.7011;
	KADU.longitude = 94.9203;
	[stationList addObject:KADU];

	VXReportingStation *KADW = [VXReportingStation new];
	KADW.stationIdentifier = @"KADW";
	KADW.associatedCity = @"CAMP SPRINGS";
	KADW.associatedState = @"MD";
	KADW.latitude = 38.8108;
	KADW.longitude = 76.8669;
	[stationList addObject:KADW];

	VXReportingStation *KAEG = [VXReportingStation new];
	KAEG.stationIdentifier = @"KAEG";
	KAEG.associatedCity = @"ALBUQUERQUE";
	KAEG.associatedState = @"NM";
	KAEG.latitude = 35.145;
	KAEG.longitude = 106.795;
	[stationList addObject:KAEG];

	VXReportingStation *KAEJ = [VXReportingStation new];
	KAEJ.stationIdentifier = @"KAEJ";
	KAEJ.associatedCity = @"BUENA VISTA";
	KAEJ.associatedState = @"CO";
	KAEJ.latitude = 38.8114;
	KAEJ.longitude = 106.121;
	[stationList addObject:KAEJ];

	VXReportingStation *KAEL = [VXReportingStation new];
	KAEL.stationIdentifier = @"KAEL";
	KAEL.associatedCity = @"ALBERT LEA";
	KAEL.associatedState = @"MN";
	KAEL.latitude = 43.6814;
	KAEL.longitude = 93.3672;
	[stationList addObject:KAEL];

	VXReportingStation *KAEX = [VXReportingStation new];
	KAEX.stationIdentifier = @"KAEX";
	KAEX.associatedCity = @"ALEXANDRIA";
	KAEX.associatedState = @"LA";
	KAEX.latitude = 31.3272;
	KAEX.longitude = 92.5483;
	[stationList addObject:KAEX];

	VXReportingStation *KAFF = [VXReportingStation new];
	KAFF.stationIdentifier = @"KAFF";
	KAFF.associatedCity = @"COLORADO SPRINGS";
	KAFF.associatedState = @"CO";
	KAFF.latitude = 38.9694;
	KAFF.longitude = 104.813;
	[stationList addObject:KAFF];

	VXReportingStation *KAFJ = [VXReportingStation new];
	KAFJ.stationIdentifier = @"KAFJ";
	KAFJ.associatedCity = @"WASHINGTON";
	KAFJ.associatedState = @"PA";
	KAFJ.latitude = 40.1364;
	KAFJ.longitude = 80.29;
	[stationList addObject:KAFJ];

	VXReportingStation *KAFK = [VXReportingStation new];
	KAFK.stationIdentifier = @"KAFK";
	KAFK.associatedCity = @"NEBRASKA CITY";
	KAFK.associatedState = @"NE";
	KAFK.latitude = 40.6067;
	KAFK.longitude = 95.8656;
	[stationList addObject:KAFK];

	VXReportingStation *KAFN = [VXReportingStation new];
	KAFN.stationIdentifier = @"KAFN";
	KAFN.associatedCity = @"JAFFREY";
	KAFN.associatedState = @"NH";
	KAFN.latitude = 42.805;
	KAFN.longitude = 72.0028;
	[stationList addObject:KAFN];

	VXReportingStation *KAFP = [VXReportingStation new];
	KAFP.stationIdentifier = @"KAFP";
	KAFP.associatedCity = @"WADESBORO";
	KAFP.associatedState = @"NC";
	KAFP.latitude = 35.0206;
	KAFP.longitude = 80.0769;
	[stationList addObject:KAFP];

	VXReportingStation *KAFW = [VXReportingStation new];
	KAFW.stationIdentifier = @"KAFW";
	KAFW.associatedCity = @"FORT WORTH";
	KAFW.associatedState = @"TX";
	KAFW.latitude = 32.9875;
	KAFW.longitude = 97.3186;
	[stationList addObject:KAFW];

	VXReportingStation *KAGC = [VXReportingStation new];
	KAGC.stationIdentifier = @"KAGC";
	KAGC.associatedCity = @"PITTSBURGH";
	KAGC.associatedState = @"PA";
	KAGC.latitude = 40.3542;
	KAGC.longitude = 79.93;
	[stationList addObject:KAGC];

	VXReportingStation *KAGS = [VXReportingStation new];
	KAGS.stationIdentifier = @"KAGS";
	KAGS.associatedCity = @"AUGUSTA";
	KAGS.associatedState = @"GA";
	KAGS.latitude = 33.3697;
	KAGS.longitude = 81.9644;
	[stationList addObject:KAGS];

	VXReportingStation *KAHN = [VXReportingStation new];
	KAHN.stationIdentifier = @"KAHN";
	KAHN.associatedCity = @"ATHENS";
	KAHN.associatedState = @"GA";
	KAHN.latitude = 33.9483;
	KAHN.longitude = 83.3261;
	[stationList addObject:KAHN];

	VXReportingStation *KAHQ = [VXReportingStation new];
	KAHQ.stationIdentifier = @"KAHQ";
	KAHQ.associatedCity = @"WAHOO";
	KAHQ.associatedState = @"NE";
	KAHQ.latitude = 41.2406;
	KAHQ.longitude = 96.5944;
	[stationList addObject:KAHQ];

	VXReportingStation *KAIA = [VXReportingStation new];
	KAIA.stationIdentifier = @"KAIA";
	KAIA.associatedCity = @"ALLIANCE";
	KAIA.associatedState = @"NE";
	KAIA.latitude = 42.0531;
	KAIA.longitude = 102.804;
	[stationList addObject:KAIA];

	VXReportingStation *KAIB = [VXReportingStation new];
	KAIB.stationIdentifier = @"KAIB";
	KAIB.associatedCity = @"NUCLA";
	KAIB.associatedState = @"CO";
	KAIB.latitude = 38.6889;
	KAIB.longitude = 108.567;
	[stationList addObject:KAIB];

	VXReportingStation *KAID = [VXReportingStation new];
	KAID.stationIdentifier = @"KAID";
	KAID.associatedCity = @"ANDERSON";
	KAID.associatedState = @"IN";
	KAID.latitude = 40.1086;
	KAID.longitude = 85.6128;
	[stationList addObject:KAID];

	VXReportingStation *KAIG = [VXReportingStation new];
	KAIG.stationIdentifier = @"KAIG";
	KAIG.associatedCity = @"ANTIGO";
	KAIG.associatedState = @"WI";
	KAIG.latitude = 45.1542;
	KAIG.longitude = 89.1106;
	[stationList addObject:KAIG];

	VXReportingStation *KAIK = [VXReportingStation new];
	KAIK.stationIdentifier = @"KAIK";
	KAIK.associatedCity = @"AIKEN";
	KAIK.associatedState = @"SC";
	KAIK.latitude = 33.6492;
	KAIK.longitude = 81.685;
	[stationList addObject:KAIK];

	VXReportingStation *KAIO = [VXReportingStation new];
	KAIO.stationIdentifier = @"KAIO";
	KAIO.associatedCity = @"ATLANTIC";
	KAIO.associatedState = @"IA";
	KAIO.latitude = 41.4072;
	KAIO.longitude = 95.0467;
	[stationList addObject:KAIO];

	VXReportingStation *KAIT = [VXReportingStation new];
	KAIT.stationIdentifier = @"KAIT";
	KAIT.associatedCity = @"AITKIN";
	KAIT.associatedState = @"MN";
	KAIT.latitude = 46.5483;
	KAIT.longitude = 93.6767;
	[stationList addObject:KAIT];

	VXReportingStation *KAIZ = [VXReportingStation new];
	KAIZ.stationIdentifier = @"KAIZ";
	KAIZ.associatedCity = @"KAISER/LAKE OZARK";
	KAIZ.associatedState = @"MO";
	KAIZ.latitude = 38.0958;
	KAIZ.longitude = 92.5494;
	[stationList addObject:KAIZ];

	VXReportingStation *KAJG = [VXReportingStation new];
	KAJG.stationIdentifier = @"KAJG";
	KAJG.associatedCity = @"MOUNT CARMEL";
	KAJG.associatedState = @"IL";
	KAJG.latitude = 38.6064;
	KAJG.longitude = 87.7267;
	[stationList addObject:KAJG];

	VXReportingStation *KAJO = [VXReportingStation new];
	KAJO.stationIdentifier = @"KAJO";
	KAJO.associatedCity = @"CORONA";
	KAJO.associatedState = @"CA";
	KAJO.latitude = 33.8975;
	KAJO.longitude = 117.602;
	[stationList addObject:KAJO];

	VXReportingStation *KAJR = [VXReportingStation new];
	KAJR.stationIdentifier = @"KAJR";
	KAJR.associatedCity = @"CORNELIA";
	KAJR.associatedState = @"GA";
	KAJR.latitude = 34.4989;
	KAJR.longitude = 83.5553;
	[stationList addObject:KAJR];

	VXReportingStation *KAJZ = [VXReportingStation new];
	KAJZ.stationIdentifier = @"KAJZ";
	KAJZ.associatedCity = @"DELTA";
	KAJZ.associatedState = @"CO";
	KAJZ.latitude = 38.7867;
	KAJZ.longitude = 108.066;
	[stationList addObject:KAJZ];

	VXReportingStation *KAKH = [VXReportingStation new];
	KAKH.stationIdentifier = @"KAKH";
	KAKH.associatedCity = @"GASTONIA";
	KAKH.associatedState = @"NC";
	KAKH.latitude = 35.2025;
	KAKH.longitude = 81.1497;
	[stationList addObject:KAKH];

	VXReportingStation *KAKO = [VXReportingStation new];
	KAKO.stationIdentifier = @"KAKO";
	KAKO.associatedCity = @"AKRON";
	KAKO.associatedState = @"CO";
	KAKO.latitude = 40.1756;
	KAKO.longitude = 103.222;
	[stationList addObject:KAKO];

	VXReportingStation *KAKQ = [VXReportingStation new];
	KAKQ.stationIdentifier = @"KAKQ";
	KAKQ.associatedCity = @"WAKEFIELD";
	KAKQ.associatedState = @"VA";
	KAKQ.latitude = 36.9869;
	KAKQ.longitude = 77.0011;
	[stationList addObject:KAKQ];

	VXReportingStation *KAKR = [VXReportingStation new];
	KAKR.stationIdentifier = @"KAKR";
	KAKR.associatedCity = @"AKRON";
	KAKR.associatedState = @"OH";
	KAKR.latitude = 41.0375;
	KAKR.longitude = 81.4667;
	[stationList addObject:KAKR];

	VXReportingStation *KALB = [VXReportingStation new];
	KALB.stationIdentifier = @"KALB";
	KALB.associatedCity = @"ALBANY";
	KALB.associatedState = @"NY";
	KALB.latitude = 42.7481;
	KALB.longitude = 73.8017;
	[stationList addObject:KALB];

	VXReportingStation *KALI = [VXReportingStation new];
	KALI.stationIdentifier = @"KALI";
	KALI.associatedCity = @"ALICE";
	KALI.associatedState = @"TX";
	KALI.latitude = 27.7408;
	KALI.longitude = 98.0269;
	[stationList addObject:KALI];

	VXReportingStation *KALM = [VXReportingStation new];
	KALM.stationIdentifier = @"KALM";
	KALM.associatedCity = @"ALAMOGORDO";
	KALM.associatedState = @"NM";
	KALM.latitude = 32.8397;
	KALM.longitude = 105.991;
	[stationList addObject:KALM];

	VXReportingStation *KALN = [VXReportingStation new];
	KALN.stationIdentifier = @"KALN";
	KALN.associatedCity = @"ALTON/ST LOUIS";
	KALN.associatedState = @"IL";
	KALN.latitude = 38.8903;
	KALN.longitude = 90.0458;
	[stationList addObject:KALN];

	VXReportingStation *KALO = [VXReportingStation new];
	KALO.stationIdentifier = @"KALO";
	KALO.associatedCity = @"WATERLOO";
	KALO.associatedState = @"IA";
	KALO.latitude = 42.5569;
	KALO.longitude = 92.4003;
	[stationList addObject:KALO];

	VXReportingStation *KALS = [VXReportingStation new];
	KALS.stationIdentifier = @"KALS";
	KALS.associatedCity = @"ALAMOSA";
	KALS.associatedState = @"CO";
	KALS.latitude = 37.4347;
	KALS.longitude = 105.866;
	[stationList addObject:KALS];

	VXReportingStation *KALW = [VXReportingStation new];
	KALW.stationIdentifier = @"KALW";
	KALW.associatedCity = @"WALLA WALLA";
	KALW.associatedState = @"WA";
	KALW.latitude = 46.0947;
	KALW.longitude = 118.288;
	[stationList addObject:KALW];

	VXReportingStation *KALX = [VXReportingStation new];
	KALX.stationIdentifier = @"KALX";
	KALX.associatedCity = @"ALEXANDER CITY";
	KALX.associatedState = @"AL";
	KALX.latitude = 32.9147;
	KALX.longitude = 85.9628;
	[stationList addObject:KALX];

	VXReportingStation *KAMA = [VXReportingStation new];
	KAMA.stationIdentifier = @"KAMA";
	KAMA.associatedCity = @"AMARILLO";
	KAMA.associatedState = @"TX";
	KAMA.latitude = 35.2192;
	KAMA.longitude = 101.706;
	[stationList addObject:KAMA];

	VXReportingStation *KAMG = [VXReportingStation new];
	KAMG.stationIdentifier = @"KAMG";
	KAMG.associatedCity = @"ALMA";
	KAMG.associatedState = @"GA";
	KAMG.latitude = 31.5358;
	KAMG.longitude = 82.5064;
	[stationList addObject:KAMG];

	VXReportingStation *KAMN = [VXReportingStation new];
	KAMN.stationIdentifier = @"KAMN";
	KAMN.associatedCity = @"ALMA";
	KAMN.associatedState = @"MI";
	KAMN.latitude = 43.3219;
	KAMN.longitude = 84.6878;
	[stationList addObject:KAMN];

	VXReportingStation *KAMW = [VXReportingStation new];
	KAMW.stationIdentifier = @"KAMW";
	KAMW.associatedCity = @"AMES";
	KAMW.associatedState = @"IA";
	KAMW.latitude = 41.9919;
	KAMW.longitude = 93.6217;
	[stationList addObject:KAMW];

	VXReportingStation *KANB = [VXReportingStation new];
	KANB.stationIdentifier = @"KANB";
	KANB.associatedCity = @"ANNISTON";
	KANB.associatedState = @"AL";
	KANB.latitude = 33.5881;
	KANB.longitude = 85.8581;
	[stationList addObject:KANB];

	VXReportingStation *KAND = [VXReportingStation new];
	KAND.stationIdentifier = @"KAND";
	KAND.associatedCity = @"ANDERSON";
	KAND.associatedState = @"SC";
	KAND.latitude = 34.4947;
	KAND.longitude = 82.7089;
	[stationList addObject:KAND];

	VXReportingStation *KANE = [VXReportingStation new];
	KANE.stationIdentifier = @"KANE";
	KANE.associatedCity = @"MINNEAPOLIS";
	KANE.associatedState = @"MN";
	KANE.latitude = 45.145;
	KANE.longitude = 93.2114;
	[stationList addObject:KANE];

	VXReportingStation *KANJ = [VXReportingStation new];
	KANJ.stationIdentifier = @"KANJ";
	KANJ.associatedCity = @"SAULT STE MARIE";
	KANJ.associatedState = @"MI";
	KANJ.latitude = 46.4792;
	KANJ.longitude = 84.3683;
	[stationList addObject:KANJ];

	VXReportingStation *KANK = [VXReportingStation new];
	KANK.stationIdentifier = @"KANK";
	KANK.associatedCity = @"SALIDA";
	KANK.associatedState = @"CO";
	KANK.latitude = 38.5358;
	KANK.longitude = 106.05;
	[stationList addObject:KANK];

	VXReportingStation *KANQ = [VXReportingStation new];
	KANQ.stationIdentifier = @"KANQ";
	KANQ.associatedCity = @"ANGOLA";
	KANQ.associatedState = @"IN";
	KANQ.latitude = 41.6394;
	KANQ.longitude = 85.0833;
	[stationList addObject:KANQ];

	VXReportingStation *KANW = [VXReportingStation new];
	KANW.stationIdentifier = @"KANW";
	KANW.associatedCity = @"AINSWORTH";
	KANW.associatedState = @"NE";
	KANW.latitude = 42.5792;
	KANW.longitude = 99.9928;
	[stationList addObject:KANW];

	VXReportingStation *KAOH = [VXReportingStation new];
	KAOH.stationIdentifier = @"KAOH";
	KAOH.associatedCity = @"LIMA";
	KAOH.associatedState = @"OH";
	KAOH.latitude = 40.7069;
	KAOH.longitude = 84.0267;
	[stationList addObject:KAOH];

	VXReportingStation *KAOO = [VXReportingStation new];
	KAOO.stationIdentifier = @"KAOO";
	KAOO.associatedCity = @"ALTOONA";
	KAOO.associatedState = @"PA";
	KAOO.latitude = 40.2961;
	KAOO.longitude = 78.32;
	[stationList addObject:KAOO];

	VXReportingStation *KAPA = [VXReportingStation new];
	KAPA.stationIdentifier = @"KAPA";
	KAPA.associatedCity = @"DENVER";
	KAPA.associatedState = @"CO";
	KAPA.latitude = 39.57;
	KAPA.longitude = 104.849;
	[stationList addObject:KAPA];

	VXReportingStation *KAPC = [VXReportingStation new];
	KAPC.stationIdentifier = @"KAPC";
	KAPC.associatedCity = @"NAPA";
	KAPC.associatedState = @"CA";
	KAPC.latitude = 38.2131;
	KAPC.longitude = 122.281;
	[stationList addObject:KAPC];

	VXReportingStation *KAPF = [VXReportingStation new];
	KAPF.stationIdentifier = @"KAPF";
	KAPF.associatedCity = @"NAPLES";
	KAPF.associatedState = @"FL";
	KAPF.latitude = 26.1525;
	KAPF.longitude = 81.775;
	[stationList addObject:KAPF];

	VXReportingStation *KAPG = [VXReportingStation new];
	KAPG.stationIdentifier = @"KAPG";
	KAPG.associatedCity = @"ABERDEEN PROVING GROUNDS(A";
	KAPG.associatedState = @"MD";
	KAPG.latitude = 39.4661;
	KAPG.longitude = 76.1694;
	[stationList addObject:KAPG];

	VXReportingStation *KAPN = [VXReportingStation new];
	KAPN.stationIdentifier = @"KAPN";
	KAPN.associatedCity = @"ALPENA";
	KAPN.associatedState = @"MI";
	KAPN.latitude = 45.0781;
	KAPN.longitude = 83.5603;
	[stationList addObject:KAPN];

	VXReportingStation *KAPY = [VXReportingStation new];
	KAPY.stationIdentifier = @"KAPY";
	KAPY.associatedCity = @"ZAPATA";
	KAPY.associatedState = @"TX";
	KAPY.latitude = 26.9686;
	KAPY.longitude = 99.2489;
	[stationList addObject:KAPY];

	VXReportingStation *KAQO = [VXReportingStation new];
	KAQO.stationIdentifier = @"KAQO";
	KAQO.associatedCity = @"LLANO";
	KAQO.associatedState = @"TX";
	KAQO.latitude = 30.7844;
	KAQO.longitude = 98.66;
	[stationList addObject:KAQO];

	VXReportingStation *KAQP = [VXReportingStation new];
	KAQP.stationIdentifier = @"KAQP";
	KAQP.associatedCity = @"APPLETON";
	KAQP.associatedState = @"MN";
	KAQP.latitude = 45.2275;
	KAQP.longitude = 96.0042;
	[stationList addObject:KAQP];

	VXReportingStation *KAQR = [VXReportingStation new];
	KAQR.stationIdentifier = @"KAQR";
	KAQR.associatedCity = @"ATOKA";
	KAQR.associatedState = @"OK";
	KAQR.latitude = 34.3983;
	KAQR.longitude = 96.1481;
	[stationList addObject:KAQR];

	VXReportingStation *KAQW = [VXReportingStation new];
	KAQW.stationIdentifier = @"KAQW";
	KAQW.associatedCity = @"NORTH ADAMS";
	KAQW.associatedState = @"MA";
	KAQW.latitude = 42.6958;
	KAQW.longitude = 73.1703;
	[stationList addObject:KAQW];

	VXReportingStation *KAQX = [VXReportingStation new];
	KAQX.stationIdentifier = @"KAQX";
	KAQX.associatedCity = @"ALLENDALE";
	KAQX.associatedState = @"SC";
	KAQX.latitude = 32.9942;
	KAQX.longitude = 81.2711;
	[stationList addObject:KAQX];

	VXReportingStation *KARA = [VXReportingStation new];
	KARA.stationIdentifier = @"KARA";
	KARA.associatedCity = @"NEW IBERIA";
	KARA.associatedState = @"LA";
	KARA.latitude = 30.0375;
	KARA.longitude = 91.8839;
	[stationList addObject:KARA];

	VXReportingStation *KARB = [VXReportingStation new];
	KARB.stationIdentifier = @"KARB";
	KARB.associatedCity = @"ANN ARBOR";
	KARB.associatedState = @"MI";
	KARB.latitude = 42.2228;
	KARB.longitude = 83.7456;
	[stationList addObject:KARB];

	VXReportingStation *KARG = [VXReportingStation new];
	KARG.stationIdentifier = @"KARG";
	KARG.associatedCity = @"WALNUT RIDGE";
	KARG.associatedState = @"AR";
	KARG.latitude = 36.1253;
	KARG.longitude = 90.9244;
	[stationList addObject:KARG];

	VXReportingStation *KARM = [VXReportingStation new];
	KARM.stationIdentifier = @"KARM";
	KARM.associatedCity = @"WHARTON";
	KARM.associatedState = @"TX";
	KARM.latitude = 29.2542;
	KARM.longitude = 96.1542;
	[stationList addObject:KARM];

	VXReportingStation *KARR = [VXReportingStation new];
	KARR.stationIdentifier = @"KARR";
	KARR.associatedCity = @"CHICAGO/AURORA";
	KARR.associatedState = @"IL";
	KARR.latitude = 41.7717;
	KARR.longitude = 88.4756;
	[stationList addObject:KARR];

	VXReportingStation *KART = [VXReportingStation new];
	KART.stationIdentifier = @"KART";
	KART.associatedCity = @"WATERTOWN";
	KART.associatedState = @"NY";
	KART.latitude = 43.9917;
	KART.longitude = 76.0217;
	[stationList addObject:KART];

	VXReportingStation *KARV = [VXReportingStation new];
	KARV.stationIdentifier = @"KARV";
	KARV.associatedCity = @"MINOCQUA-WOODRUFF";
	KARV.associatedState = @"WI";
	KARV.latitude = 45.9278;
	KARV.longitude = 89.7308;
	[stationList addObject:KARV];

	VXReportingStation *KARW = [VXReportingStation new];
	KARW.stationIdentifier = @"KARW";
	KARW.associatedCity = @"BEAUFORT";
	KARW.associatedState = @"SC";
	KARW.latitude = 32.4119;
	KARW.longitude = 80.6342;
	[stationList addObject:KARW];

	VXReportingStation *KASD = [VXReportingStation new];
	KASD.stationIdentifier = @"KASD";
	KASD.associatedCity = @"SLIDELL";
	KASD.associatedState = @"LA";
	KASD.latitude = 30.345;
	KASD.longitude = 89.8206;
	[stationList addObject:KASD];

	VXReportingStation *KASE = [VXReportingStation new];
	KASE.stationIdentifier = @"KASE";
	KASE.associatedCity = @"ASPEN";
	KASE.associatedState = @"CO";
	KASE.latitude = 39.2231;
	KASE.longitude = 106.869;
	[stationList addObject:KASE];

	VXReportingStation *KASG = [VXReportingStation new];
	KASG.stationIdentifier = @"KASG";
	KASG.associatedCity = @"SPRINGDALE";
	KASG.associatedState = @"AR";
	KASG.latitude = 36.1764;
	KASG.longitude = 94.1192;
	[stationList addObject:KASG];

	VXReportingStation *KASH = [VXReportingStation new];
	KASH.stationIdentifier = @"KASH";
	KASH.associatedCity = @"NASHUA";
	KASH.associatedState = @"NH";
	KASH.latitude = 42.7817;
	KASH.longitude = 71.5147;
	[stationList addObject:KASH];

	VXReportingStation *KASJ = [VXReportingStation new];
	KASJ.stationIdentifier = @"KASJ";
	KASJ.associatedCity = @"AHOSKIE";
	KASJ.associatedState = @"NC";
	KASJ.latitude = 36.2975;
	KASJ.longitude = 77.1708;
	[stationList addObject:KASJ];

	VXReportingStation *KASL = [VXReportingStation new];
	KASL.stationIdentifier = @"KASL";
	KASL.associatedCity = @"MARSHALL";
	KASL.associatedState = @"TX";
	KASL.latitude = 32.5203;
	KASL.longitude = 94.3078;
	[stationList addObject:KASL];

	VXReportingStation *KASN = [VXReportingStation new];
	KASN.stationIdentifier = @"KASN";
	KASN.associatedCity = @"TALLADEGA";
	KASN.associatedState = @"AL";
	KASN.latitude = 33.5678;
	KASN.longitude = 86.0561;
	[stationList addObject:KASN];

	VXReportingStation *KAST = [VXReportingStation new];
	KAST.stationIdentifier = @"KAST";
	KAST.associatedCity = @"ASTORIA";
	KAST.associatedState = @"OR";
	KAST.latitude = 46.1578;
	KAST.longitude = 123.879;
	[stationList addObject:KAST];

	VXReportingStation *KASW = [VXReportingStation new];
	KASW.stationIdentifier = @"KASW";
	KASW.associatedCity = @"WARSAW";
	KASW.associatedState = @"IN";
	KASW.latitude = 41.2744;
	KASW.longitude = 85.84;
	[stationList addObject:KASW];

	VXReportingStation *KASX = [VXReportingStation new];
	KASX.stationIdentifier = @"KASX";
	KASX.associatedCity = @"ASHLAND";
	KASX.associatedState = @"WI";
	KASX.latitude = 46.5483;
	KASX.longitude = 90.9189;
	[stationList addObject:KASX];

	VXReportingStation *KATL = [VXReportingStation new];
	KATL.stationIdentifier = @"KATL";
	KATL.associatedCity = @"ATLANTA";
	KATL.associatedState = @"GA";
	KATL.latitude = 33.6403;
	KATL.longitude = 84.4269;
	[stationList addObject:KATL];

	VXReportingStation *KATP = [VXReportingStation new];
	KATP.stationIdentifier = @"KATP";
	KATP.associatedCity = @"ATLANTIS";
	KATP.associatedState = @"LA";
	KATP.latitude = 27.1956;
	KATP.longitude = 90.0269;
	[stationList addObject:KATP];

	VXReportingStation *KATS = [VXReportingStation new];
	KATS.stationIdentifier = @"KATS";
	KATS.associatedCity = @"ARTESIA";
	KATS.associatedState = @"NM";
	KATS.latitude = 32.8525;
	KATS.longitude = 104.468;
	[stationList addObject:KATS];

	VXReportingStation *KATT = [VXReportingStation new];
	KATT.stationIdentifier = @"KATT";
	KATT.associatedCity = @"AUSTIN";
	KATT.associatedState = @"TX";
	KATT.latitude = 30.2986;
	KATT.longitude = 97.7017;
	[stationList addObject:KATT];

	VXReportingStation *KATW = [VXReportingStation new];
	KATW.stationIdentifier = @"KATW";
	KATW.associatedCity = @"APPLETON";
	KATW.associatedState = @"WI";
	KATW.latitude = 44.2572;
	KATW.longitude = 88.5194;
	[stationList addObject:KATW];

	VXReportingStation *KATY = [VXReportingStation new];
	KATY.stationIdentifier = @"KATY";
	KATY.associatedCity = @"WATERTOWN";
	KATY.associatedState = @"SD";
	KATY.latitude = 44.9139;
	KATY.longitude = 97.1544;
	[stationList addObject:KATY];

	VXReportingStation *KAUG = [VXReportingStation new];
	KAUG.stationIdentifier = @"KAUG";
	KAUG.associatedCity = @"AUGUSTA";
	KAUG.associatedState = @"ME";
	KAUG.latitude = 44.3206;
	KAUG.longitude = 69.7972;
	[stationList addObject:KAUG];

	VXReportingStation *KAUH = [VXReportingStation new];
	KAUH.stationIdentifier = @"KAUH";
	KAUH.associatedCity = @"AURORA";
	KAUH.associatedState = @"NE";
	KAUH.latitude = 40.8939;
	KAUH.longitude = 97.9944;
	[stationList addObject:KAUH];

	VXReportingStation *KAUM = [VXReportingStation new];
	KAUM.stationIdentifier = @"KAUM";
	KAUM.associatedCity = @"AUSTIN";
	KAUM.associatedState = @"MN";
	KAUM.latitude = 43.6647;
	KAUM.longitude = 92.9333;
	[stationList addObject:KAUM];

	VXReportingStation *KAUN = [VXReportingStation new];
	KAUN.stationIdentifier = @"KAUN";
	KAUN.associatedCity = @"AUBURN";
	KAUN.associatedState = @"CA";
	KAUN.latitude = 38.9547;
	KAUN.longitude = 121.082;
	[stationList addObject:KAUN];

	VXReportingStation *KAUO = [VXReportingStation new];
	KAUO.stationIdentifier = @"KAUO";
	KAUO.associatedCity = @"AUBURN";
	KAUO.associatedState = @"AL";
	KAUO.latitude = 32.615;
	KAUO.longitude = 85.4339;
	[stationList addObject:KAUO];

	VXReportingStation *KAUS = [VXReportingStation new];
	KAUS.stationIdentifier = @"KAUS";
	KAUS.associatedCity = @"AUSTIN";
	KAUS.associatedState = @"TX";
	KAUS.latitude = 30.1944;
	KAUS.longitude = 97.6697;
	[stationList addObject:KAUS];

	VXReportingStation *KAUW = [VXReportingStation new];
	KAUW.stationIdentifier = @"KAUW";
	KAUW.associatedCity = @"WAUSAU";
	KAUW.associatedState = @"WI";
	KAUW.latitude = 44.9261;
	KAUW.longitude = 89.6264;
	[stationList addObject:KAUW];

	VXReportingStation *KAVC = [VXReportingStation new];
	KAVC.stationIdentifier = @"KAVC";
	KAVC.associatedCity = @"SOUTH HILL";
	KAVC.associatedState = @"VA";
	KAVC.latitude = 36.6881;
	KAVC.longitude = 78.0544;
	[stationList addObject:KAVC];

	VXReportingStation *KAVK = [VXReportingStation new];
	KAVK.stationIdentifier = @"KAVK";
	KAVK.associatedCity = @"ALVA";
	KAVK.associatedState = @"OK";
	KAVK.latitude = 36.7731;
	KAVK.longitude = 98.6697;
	[stationList addObject:KAVK];

	VXReportingStation *KAVL = [VXReportingStation new];
	KAVL.stationIdentifier = @"KAVL";
	KAVL.associatedCity = @"ASHEVILLE";
	KAVL.associatedState = @"NC";
	KAVL.latitude = 35.4361;
	KAVL.longitude = 82.5417;
	[stationList addObject:KAVL];

	VXReportingStation *KAVP = [VXReportingStation new];
	KAVP.stationIdentifier = @"KAVP";
	KAVP.associatedCity = @"WILKES-BARRE/SCRANTON";
	KAVP.associatedState = @"PA";
	KAVP.latitude = 41.3383;
	KAVP.longitude = 75.7233;
	[stationList addObject:KAVP];

	VXReportingStation *KAVQ = [VXReportingStation new];
	KAVQ.stationIdentifier = @"KAVQ";
	KAVQ.associatedCity = @"MARANA";
	KAVQ.associatedState = @"AZ";
	KAVQ.latitude = 32.4094;
	KAVQ.longitude = 111.218;
	[stationList addObject:KAVQ];

	VXReportingStation *KAVX = [VXReportingStation new];
	KAVX.stationIdentifier = @"KAVX";
	KAVX.associatedCity = @"AVALON";
	KAVX.associatedState = @"CA";
	KAVX.latitude = 33.4047;
	KAVX.longitude = 118.416;
	[stationList addObject:KAVX];

	VXReportingStation *KAWG = [VXReportingStation new];
	KAWG.stationIdentifier = @"KAWG";
	KAWG.associatedCity = @"WASHINGTON";
	KAWG.associatedState = @"IA";
	KAWG.latitude = 41.2758;
	KAWG.longitude = 91.6733;
	[stationList addObject:KAWG];

	VXReportingStation *KAWH = [VXReportingStation new];
	KAWH.stationIdentifier = @"KAWH";
	KAWH.associatedCity = @"MOUNTAIN CITY";
	KAWH.associatedState = @"NV";
	KAWH.latitude = 41.6664;
	KAWH.longitude = 115.784;
	[stationList addObject:KAWH];

	VXReportingStation *KAWM = [VXReportingStation new];
	KAWM.stationIdentifier = @"KAWM";
	KAWM.associatedCity = @"WEST MEMPHIS";
	KAWM.associatedState = @"AR";
	KAWM.latitude = 35.135;
	KAWM.longitude = 90.2344;
	[stationList addObject:KAWM];

	VXReportingStation *KAWO = [VXReportingStation new];
	KAWO.stationIdentifier = @"KAWO";
	KAWO.associatedCity = @"ARLINGTON";
	KAWO.associatedState = @"WA";
	KAWO.latitude = 48.1606;
	KAWO.longitude = 122.159;
	[stationList addObject:KAWO];

	VXReportingStation *KAXA = [VXReportingStation new];
	KAXA.stationIdentifier = @"KAXA";
	KAXA.associatedCity = @"ALGONA";
	KAXA.associatedState = @"IA";
	KAXA.latitude = 43.0778;
	KAXA.longitude = 94.2719;
	[stationList addObject:KAXA];

	VXReportingStation *KAXH = [VXReportingStation new];
	KAXH.stationIdentifier = @"KAXH";
	KAXH.associatedCity = @"HOUSTON";
	KAXH.associatedState = @"TX";
	KAXH.latitude = 29.2833;
	KAXH.longitude = 95.4264;
	[stationList addObject:KAXH];

	VXReportingStation *KAXN = [VXReportingStation new];
	KAXN.stationIdentifier = @"KAXN";
	KAXN.associatedCity = @"ALEXANDRIA";
	KAXN.associatedState = @"MN";
	KAXN.latitude = 45.8661;
	KAXN.longitude = 95.3944;
	[stationList addObject:KAXN];

	VXReportingStation *KAXO = [VXReportingStation new];
	KAXO.stationIdentifier = @"KAXO";
	KAXO.associatedCity = @"GRAND ISLE";
	KAXO.associatedState = @"LA";
	KAXO.latitude = 29.1919;
	KAXO.longitude = 90.0753;
	[stationList addObject:KAXO];

	VXReportingStation *KAXS = [VXReportingStation new];
	KAXS.stationIdentifier = @"KAXS";
	KAXS.associatedCity = @"ALTUS";
	KAXS.associatedState = @"OK";
	KAXS.latitude = 34.6986;
	KAXS.longitude = 99.3381;
	[stationList addObject:KAXS];

	VXReportingStation *KAXV = [VXReportingStation new];
	KAXV.stationIdentifier = @"KAXV";
	KAXV.associatedCity = @"WAPAKONETA";
	KAXV.associatedState = @"OH";
	KAXV.latitude = 40.4933;
	KAXV.longitude = 84.2989;
	[stationList addObject:KAXV];

	VXReportingStation *KAXX = [VXReportingStation new];
	KAXX.stationIdentifier = @"KAXX";
	KAXX.associatedCity = @"ANGEL FIRE";
	KAXX.associatedState = @"NM";
	KAXX.latitude = 36.4219;
	KAXX.longitude = 105.29;
	[stationList addObject:KAXX];

	VXReportingStation *KAYS = [VXReportingStation new];
	KAYS.stationIdentifier = @"KAYS";
	KAYS.associatedCity = @"WAYCROSS";
	KAYS.associatedState = @"GA";
	KAYS.latitude = 31.2489;
	KAYS.longitude = 82.3953;
	[stationList addObject:KAYS];

	VXReportingStation *KAZE = [VXReportingStation new];
	KAZE.stationIdentifier = @"KAZE";
	KAZE.associatedCity = @"HAZLEHURST";
	KAZE.associatedState = @"GA";
	KAZE.latitude = 31.8792;
	KAZE.longitude = 82.6453;
	[stationList addObject:KAZE];

	VXReportingStation *KAZO = [VXReportingStation new];
	KAZO.stationIdentifier = @"KAZO";
	KAZO.associatedCity = @"KALAMAZOO";
	KAZO.associatedState = @"MI";
	KAZO.latitude = 42.2347;
	KAZO.longitude = 85.5519;
	[stationList addObject:KAZO];

	VXReportingStation *KBAB = [VXReportingStation new];
	KBAB.stationIdentifier = @"KBAB";
	KBAB.associatedCity = @"MARYSVILLE";
	KBAB.associatedState = @"CA";
	KBAB.latitude = 39.1361;
	KBAB.longitude = 121.436;
	[stationList addObject:KBAB];

	VXReportingStation *KBAD = [VXReportingStation new];
	KBAD.stationIdentifier = @"KBAD";
	KBAD.associatedCity = @"BOSSIER CITY";
	KBAD.associatedState = @"LA";
	KBAD.latitude = 32.5017;
	KBAD.longitude = 93.6625;
	[stationList addObject:KBAD];

	VXReportingStation *KBAF = [VXReportingStation new];
	KBAF.stationIdentifier = @"KBAF";
	KBAF.associatedCity = @"WESTFIELD/SPRINGFIELD";
	KBAF.associatedState = @"MA";
	KBAF.latitude = 42.1575;
	KBAF.longitude = 72.7156;
	[stationList addObject:KBAF];

	VXReportingStation *KBAK = [VXReportingStation new];
	KBAK.stationIdentifier = @"KBAK";
	KBAK.associatedCity = @"COLUMBUS";
	KBAK.associatedState = @"IN";
	KBAK.latitude = 39.2617;
	KBAK.longitude = 85.8961;
	[stationList addObject:KBAK];

	VXReportingStation *KBAX = [VXReportingStation new];
	KBAX.stationIdentifier = @"KBAX";
	KBAX.associatedCity = @"BAD AXE";
	KBAX.associatedState = @"MI";
	KBAX.latitude = 43.78;
	KBAX.longitude = 82.9853;
	[stationList addObject:KBAX];

	VXReportingStation *KBAZ = [VXReportingStation new];
	KBAZ.stationIdentifier = @"KBAZ";
	KBAZ.associatedCity = @"NEW BRAUNFELS";
	KBAZ.associatedState = @"TX";
	KBAZ.latitude = 29.7044;
	KBAZ.longitude = 98.0422;
	[stationList addObject:KBAZ];

	VXReportingStation *KBBB = [VXReportingStation new];
	KBBB.stationIdentifier = @"KBBB";
	KBBB.associatedCity = @"BENSON";
	KBBB.associatedState = @"MN";
	KBBB.latitude = 45.3317;
	KBBB.longitude = 95.6506;
	[stationList addObject:KBBB];

	VXReportingStation *KBBD = [VXReportingStation new];
	KBBD.stationIdentifier = @"KBBD";
	KBBD.associatedCity = @"BRADY";
	KBBD.associatedState = @"TX";
	KBBD.latitude = 31.1792;
	KBBD.longitude = 99.3239;
	[stationList addObject:KBBD];

	VXReportingStation *KBBF = [VXReportingStation new];
	KBBF.stationIdentifier = @"KBBF";
	KBBF.associatedCity = @"BRAZOS 133";
	KBBF.associatedState = @"TX";
	KBBF.latitude = 27.835;
	KBBF.longitude = 96.0131;
	[stationList addObject:KBBF];

	VXReportingStation *KBBG = [VXReportingStation new];
	KBBG.stationIdentifier = @"KBBG";
	KBBG.associatedCity = @"BRANSON";
	KBBG.associatedState = @"MO";
	KBBG.latitude = 36.5319;
	KBBG.longitude = 93.2003;
	[stationList addObject:KBBG];

	VXReportingStation *KBBP = [VXReportingStation new];
	KBBP.stationIdentifier = @"KBBP";
	KBBP.associatedCity = @"BENNETTSVILLE";
	KBBP.associatedState = @"SC";
	KBBP.latitude = 34.6217;
	KBBP.longitude = 79.7342;
	[stationList addObject:KBBP];

	VXReportingStation *KBBW = [VXReportingStation new];
	KBBW.stationIdentifier = @"KBBW";
	KBBW.associatedCity = @"BROKEN BOW";
	KBBW.associatedState = @"NE";
	KBBW.latitude = 41.4364;
	KBBW.longitude = 99.6419;
	[stationList addObject:KBBW];

	VXReportingStation *KBCB = [VXReportingStation new];
	KBCB.stationIdentifier = @"KBCB";
	KBCB.associatedCity = @"BLACKSBURG";
	KBCB.associatedState = @"VA";
	KBCB.latitude = 37.2075;
	KBCB.longitude = 80.4078;
	[stationList addObject:KBCB];

	VXReportingStation *KBCE = [VXReportingStation new];
	KBCE.stationIdentifier = @"KBCE";
	KBCE.associatedCity = @"BRYCE CANYON";
	KBCE.associatedState = @"UT";
	KBCE.latitude = 37.7064;
	KBCE.longitude = 112.145;
	[stationList addObject:KBCE];

	VXReportingStation *KBCK = [VXReportingStation new];
	KBCK.stationIdentifier = @"KBCK";
	KBCK.associatedCity = @"BLACK RIVER FALLS";
	KBCK.associatedState = @"WI";
	KBCK.latitude = 44.2506;
	KBCK.longitude = 90.8553;
	[stationList addObject:KBCK];

	VXReportingStation *KBCT = [VXReportingStation new];
	KBCT.stationIdentifier = @"KBCT";
	KBCT.associatedCity = @"BOCA RATON";
	KBCT.associatedState = @"FL";
	KBCT.latitude = 26.3783;
	KBCT.longitude = 80.1075;
	[stationList addObject:KBCT];

	VXReportingStation *KBDE = [VXReportingStation new];
	KBDE.stationIdentifier = @"KBDE";
	KBDE.associatedCity = @"BAUDETTE";
	KBDE.associatedState = @"MN";
	KBDE.latitude = 48.7283;
	KBDE.longitude = 94.6122;
	[stationList addObject:KBDE];

	VXReportingStation *KBDG = [VXReportingStation new];
	KBDG.stationIdentifier = @"KBDG";
	KBDG.associatedCity = @"BLANDING";
	KBDG.associatedState = @"UT";
	KBDG.latitude = 37.5833;
	KBDG.longitude = 109.483;
	[stationList addObject:KBDG];

	VXReportingStation *KBDH = [VXReportingStation new];
	KBDH.stationIdentifier = @"KBDH";
	KBDH.associatedCity = @"WILLMAR";
	KBDH.associatedState = @"MN";
	KBDH.latitude = 45.1167;
	KBDH.longitude = 95.1303;
	[stationList addObject:KBDH];

	VXReportingStation *KBDL = [VXReportingStation new];
	KBDL.stationIdentifier = @"KBDL";
	KBDL.associatedCity = @"WINDSOR LOCKS";
	KBDL.associatedState = @"CT";
	KBDL.latitude = 41.9389;
	KBDL.longitude = 72.6831;
	[stationList addObject:KBDL];

	VXReportingStation *KBDN = [VXReportingStation new];
	KBDN.stationIdentifier = @"KBDN";
	KBDN.associatedCity = @"BEND";
	KBDN.associatedState = @"OR";
	KBDN.latitude = 44.0936;
	KBDN.longitude = 121.198;
	[stationList addObject:KBDN];

	VXReportingStation *KBDR = [VXReportingStation new];
	KBDR.stationIdentifier = @"KBDR";
	KBDR.associatedCity = @"BRIDGEPORT";
	KBDR.associatedState = @"CT";
	KBDR.latitude = 41.1633;
	KBDR.longitude = 73.1261;
	[stationList addObject:KBDR];

	VXReportingStation *KBDU = [VXReportingStation new];
	KBDU.stationIdentifier = @"KBDU";
	KBDU.associatedCity = @"BOULDER";
	KBDU.associatedState = @"CO";
	KBDU.latitude = 40.0392;
	KBDU.longitude = 105.226;
	[stationList addObject:KBDU];

	VXReportingStation *KBEA = [VXReportingStation new];
	KBEA.stationIdentifier = @"KBEA";
	KBEA.associatedCity = @"BEEVILLE";
	KBEA.associatedState = @"TX";
	KBEA.latitude = 28.3617;
	KBEA.longitude = 97.7908;
	[stationList addObject:KBEA];

	VXReportingStation *KBED = [VXReportingStation new];
	KBED.stationIdentifier = @"KBED";
	KBED.associatedCity = @"BEDFORD";
	KBED.associatedState = @"MA";
	KBED.latitude = 42.4697;
	KBED.longitude = 71.2889;
	[stationList addObject:KBED];

	VXReportingStation *KBEH = [VXReportingStation new];
	KBEH.stationIdentifier = @"KBEH";
	KBEH.associatedCity = @"BENTON HARBOR";
	KBEH.associatedState = @"MI";
	KBEH.latitude = 42.1283;
	KBEH.longitude = 86.4283;
	[stationList addObject:KBEH];

	VXReportingStation *KBFD = [VXReportingStation new];
	KBFD.stationIdentifier = @"KBFD";
	KBFD.associatedCity = @"BRADFORD";
	KBFD.associatedState = @"PA";
	KBFD.latitude = 41.8031;
	KBFD.longitude = 78.64;
	[stationList addObject:KBFD];

	VXReportingStation *KBFF = [VXReportingStation new];
	KBFF.stationIdentifier = @"KBFF";
	KBFF.associatedCity = @"SCOTTSBLUFF";
	KBFF.associatedState = @"NE";
	KBFF.latitude = 41.8739;
	KBFF.longitude = 103.596;
	[stationList addObject:KBFF];

	VXReportingStation *KBFI = [VXReportingStation new];
	KBFI.stationIdentifier = @"KBFI";
	KBFI.associatedCity = @"SEATTLE";
	KBFI.associatedState = @"WA";
	KBFI.latitude = 47.5297;
	KBFI.longitude = 122.302;
	[stationList addObject:KBFI];

	VXReportingStation *KBFL = [VXReportingStation new];
	KBFL.stationIdentifier = @"KBFL";
	KBFL.associatedCity = @"BAKERSFIELD";
	KBFL.associatedState = @"CA";
	KBFL.latitude = 35.4333;
	KBFL.longitude = 119.057;
	[stationList addObject:KBFL];

	VXReportingStation *KBFM = [VXReportingStation new];
	KBFM.stationIdentifier = @"KBFM";
	KBFM.associatedCity = @"MOBILE";
	KBFM.associatedState = @"AL";
	KBFM.latitude = 30.6267;
	KBFM.longitude = 88.0681;
	[stationList addObject:KBFM];

	VXReportingStation *KBFW = [VXReportingStation new];
	KBFW.stationIdentifier = @"KBFW";
	KBFW.associatedCity = @"SILVER BAY";
	KBFW.associatedState = @"MN";
	KBFW.latitude = 47.2489;
	KBFW.longitude = 91.4156;
	[stationList addObject:KBFW];

	VXReportingStation *KBGD = [VXReportingStation new];
	KBGD.stationIdentifier = @"KBGD";
	KBGD.associatedCity = @"BORGER";
	KBGD.associatedState = @"TX";
	KBGD.latitude = 35.7008;
	KBGD.longitude = 101.394;
	[stationList addObject:KBGD];

	VXReportingStation *KBGE = [VXReportingStation new];
	KBGE.stationIdentifier = @"KBGE";
	KBGE.associatedCity = @"BAINBRIDGE";
	KBGE.associatedState = @"GA";
	KBGE.latitude = 30.9714;
	KBGE.longitude = 84.6372;
	[stationList addObject:KBGE];

	VXReportingStation *KBGF = [VXReportingStation new];
	KBGF.stationIdentifier = @"KBGF";
	KBGF.associatedCity = @"WINCHESTER";
	KBGF.associatedState = @"TN";
	KBGF.latitude = 35.1775;
	KBGF.longitude = 86.0661;
	[stationList addObject:KBGF];

	VXReportingStation *KBGM = [VXReportingStation new];
	KBGM.stationIdentifier = @"KBGM";
	KBGM.associatedCity = @"BINGHAMTON";
	KBGM.associatedState = @"NY";
	KBGM.latitude = 42.2086;
	KBGM.longitude = 75.9797;
	[stationList addObject:KBGM];

	VXReportingStation *KBGR = [VXReportingStation new];
	KBGR.stationIdentifier = @"KBGR";
	KBGR.associatedCity = @"BANGOR";
	KBGR.associatedState = @"ME";
	KBGR.latitude = 44.8072;
	KBGR.longitude = 68.8281;
	[stationList addObject:KBGR];

	VXReportingStation *KBHB = [VXReportingStation new];
	KBHB.stationIdentifier = @"KBHB";
	KBHB.associatedCity = @"BAR HARBOR";
	KBHB.associatedState = @"ME";
	KBHB.latitude = 44.4494;
	KBHB.longitude = 68.3614;
	[stationList addObject:KBHB];

	VXReportingStation *KBHC = [VXReportingStation new];
	KBHC.stationIdentifier = @"KBHC";
	KBHC.associatedCity = @"BAXLEY";
	KBHC.associatedState = @"GA";
	KBHC.latitude = 31.7125;
	KBHC.longitude = 82.3883;
	[stationList addObject:KBHC];

	VXReportingStation *KBHK = [VXReportingStation new];
	KBHK.stationIdentifier = @"KBHK";
	KBHK.associatedCity = @"BAKER";
	KBHK.associatedState = @"MT";
	KBHK.latitude = 46.3475;
	KBHK.longitude = 104.259;
	[stationList addObject:KBHK];

	VXReportingStation *KBHM = [VXReportingStation new];
	KBHM.stationIdentifier = @"KBHM";
	KBHM.associatedCity = @"BIRMINGHAM";
	KBHM.associatedState = @"AL";
	KBHM.latitude = 33.5628;
	KBHM.longitude = 86.7533;
	[stationList addObject:KBHM];

	VXReportingStation *KBID = [VXReportingStation new];
	KBID.stationIdentifier = @"KBID";
	KBID.associatedCity = @"BLOCK ISLAND";
	KBID.associatedState = @"RI";
	KBID.latitude = 41.1681;
	KBID.longitude = 71.5778;
	[stationList addObject:KBID];

	VXReportingStation *KBIE = [VXReportingStation new];
	KBIE.stationIdentifier = @"KBIE";
	KBIE.associatedCity = @"BEATRICE";
	KBIE.associatedState = @"NE";
	KBIE.latitude = 40.3011;
	KBIE.longitude = 96.7539;
	[stationList addObject:KBIE];

	VXReportingStation *KBIH = [VXReportingStation new];
	KBIH.stationIdentifier = @"KBIH";
	KBIH.associatedCity = @"BISHOP";
	KBIH.associatedState = @"CA";
	KBIH.latitude = 37.3731;
	KBIH.longitude = 118.363;
	[stationList addObject:KBIH];

	VXReportingStation *KBIJ = [VXReportingStation new];
	KBIJ.stationIdentifier = @"KBIJ";
	KBIJ.associatedCity = @"BLAKELY";
	KBIJ.associatedState = @"GA";
	KBIJ.latitude = 31.4014;
	KBIJ.longitude = 84.8936;
	[stationList addObject:KBIJ];

	VXReportingStation *KBIL = [VXReportingStation new];
	KBIL.stationIdentifier = @"KBIL";
	KBIL.associatedCity = @"BILLINGS";
	KBIL.associatedState = @"MT";
	KBIL.latitude = 45.8075;
	KBIL.longitude = 108.543;
	[stationList addObject:KBIL];

	VXReportingStation *KBIS = [VXReportingStation new];
	KBIS.stationIdentifier = @"KBIS";
	KBIS.associatedCity = @"BISMARCK";
	KBIS.associatedState = @"ND";
	KBIS.latitude = 46.7725;
	KBIS.longitude = 100.746;
	[stationList addObject:KBIS];

	VXReportingStation *KBIV = [VXReportingStation new];
	KBIV.stationIdentifier = @"KBIV";
	KBIV.associatedCity = @"HOLLAND";
	KBIV.associatedState = @"MI";
	KBIV.latitude = 42.7431;
	KBIV.longitude = 86.105;
	[stationList addObject:KBIV];

	VXReportingStation *KBIX = [VXReportingStation new];
	KBIX.stationIdentifier = @"KBIX";
	KBIX.associatedCity = @"BILOXI";
	KBIX.associatedState = @"MS";
	KBIX.latitude = 30.4111;
	KBIX.longitude = 88.9236;
	[stationList addObject:KBIX];

	VXReportingStation *KBJC = [VXReportingStation new];
	KBJC.stationIdentifier = @"KBJC";
	KBJC.associatedCity = @"DENVER";
	KBJC.associatedState = @"CO";
	KBJC.latitude = 39.9086;
	KBJC.longitude = 105.117;
	[stationList addObject:KBJC];

	VXReportingStation *KBJI = [VXReportingStation new];
	KBJI.stationIdentifier = @"KBJI";
	KBJI.associatedCity = @"BEMIDJI";
	KBJI.associatedState = @"MN";
	KBJI.latitude = 47.5092;
	KBJI.longitude = 94.9336;
	[stationList addObject:KBJI];

	VXReportingStation *KBJJ = [VXReportingStation new];
	KBJJ.stationIdentifier = @"KBJJ";
	KBJJ.associatedCity = @"WOOSTER";
	KBJJ.associatedState = @"OH";
	KBJJ.latitude = 40.8747;
	KBJJ.longitude = 81.8881;
	[stationList addObject:KBJJ];

	VXReportingStation *KBKD = [VXReportingStation new];
	KBKD.stationIdentifier = @"KBKD";
	KBKD.associatedCity = @"BRECKENRIDGE";
	KBKD.associatedState = @"TX";
	KBKD.latitude = 32.7189;
	KBKD.longitude = 98.8908;
	[stationList addObject:KBKD];

	VXReportingStation *KBKE = [VXReportingStation new];
	KBKE.stationIdentifier = @"KBKE";
	KBKE.associatedCity = @"BAKER CITY";
	KBKE.associatedState = @"OR";
	KBKE.latitude = 44.8372;
	KBKE.longitude = 117.809;
	[stationList addObject:KBKE];

	VXReportingStation *KBKF = [VXReportingStation new];
	KBKF.stationIdentifier = @"KBKF";
	KBKF.associatedCity = @"AURORA";
	KBKF.associatedState = @"CO";
	KBKF.latitude = 39.7017;
	KBKF.longitude = 104.752;
	[stationList addObject:KBKF];

	VXReportingStation *KBKL = [VXReportingStation new];
	KBKL.stationIdentifier = @"KBKL";
	KBKL.associatedCity = @"CLEVELAND";
	KBKL.associatedState = @"OH";
	KBKL.latitude = 41.5175;
	KBKL.longitude = 81.6833;
	[stationList addObject:KBKL];

	VXReportingStation *KBKN = [VXReportingStation new];
	KBKN.stationIdentifier = @"KBKN";
	KBKN.associatedCity = @"BLACKWELL";
	KBKN.associatedState = @"OK";
	KBKN.latitude = 36.7431;
	KBKN.longitude = 97.3478;
	[stationList addObject:KBKN];

	VXReportingStation *KBKS = [VXReportingStation new];
	KBKS.stationIdentifier = @"KBKS";
	KBKS.associatedCity = @"FALFURRIAS";
	KBKS.associatedState = @"TX";
	KBKS.latitude = 27.2067;
	KBKS.longitude = 98.1211;
	[stationList addObject:KBKS];

	VXReportingStation *KBKT = [VXReportingStation new];
	KBKT.stationIdentifier = @"KBKT";
	KBKT.associatedCity = @"BLACKSTONE";
	KBKT.associatedState = @"VA";
	KBKT.latitude = 37.0775;
	KBKT.longitude = 77.9556;
	[stationList addObject:KBKT];

	VXReportingStation *KBKV = [VXReportingStation new];
	KBKV.stationIdentifier = @"KBKV";
	KBKV.associatedCity = @"BROOKSVILLE";
	KBKV.associatedState = @"FL";
	KBKV.latitude = 28.4733;
	KBKV.longitude = 82.4553;
	[stationList addObject:KBKV];

	VXReportingStation *KBKW = [VXReportingStation new];
	KBKW.stationIdentifier = @"KBKW";
	KBKW.associatedCity = @"BECKLEY";
	KBKW.associatedState = @"WV";
	KBKW.latitude = 37.7872;
	KBKW.longitude = 81.1239;
	[stationList addObject:KBKW];

	VXReportingStation *KBKX = [VXReportingStation new];
	KBKX.stationIdentifier = @"KBKX";
	KBKX.associatedCity = @"BROOKINGS";
	KBKX.associatedState = @"SD";
	KBKX.latitude = 44.3047;
	KBKX.longitude = 96.8169;
	[stationList addObject:KBKX];

	VXReportingStation *KBLF = [VXReportingStation new];
	KBLF.stationIdentifier = @"KBLF";
	KBLF.associatedCity = @"BLUEFIELD";
	KBLF.associatedState = @"WV";
	KBLF.latitude = 37.2956;
	KBLF.longitude = 81.2075;
	[stationList addObject:KBLF];

	VXReportingStation *KBLH = [VXReportingStation new];
	KBLH.stationIdentifier = @"KBLH";
	KBLH.associatedCity = @"BLYTHE";
	KBLH.associatedState = @"CA";
	KBLH.latitude = 33.6189;
	KBLH.longitude = 114.717;
	[stationList addObject:KBLH];

	VXReportingStation *KBLI = [VXReportingStation new];
	KBLI.stationIdentifier = @"KBLI";
	KBLI.associatedCity = @"BELLINGHAM";
	KBLI.associatedState = @"WA";
	KBLI.latitude = 48.7925;
	KBLI.longitude = 122.537;
	[stationList addObject:KBLI];

	VXReportingStation *KBLM = [VXReportingStation new];
	KBLM.stationIdentifier = @"KBLM";
	KBLM.associatedCity = @"BELMAR/FARMINGDALE";
	KBLM.associatedState = @"NJ";
	KBLM.latitude = 40.1867;
	KBLM.longitude = 74.1247;
	[stationList addObject:KBLM];

	VXReportingStation *KBLU = [VXReportingStation new];
	KBLU.stationIdentifier = @"KBLU";
	KBLU.associatedCity = @"EMIGRANT GAP";
	KBLU.associatedState = @"CA";
	KBLU.latitude = 39.2747;
	KBLU.longitude = 120.71;
	[stationList addObject:KBLU];

	VXReportingStation *KBLV = [VXReportingStation new];
	KBLV.stationIdentifier = @"KBLV";
	KBLV.associatedCity = @"BELLEVILLE";
	KBLV.associatedState = @"IL";
	KBLV.latitude = 38.545;
	KBLV.longitude = 89.835;
	[stationList addObject:KBLV];

	VXReportingStation *KBMC = [VXReportingStation new];
	KBMC.stationIdentifier = @"KBMC";
	KBMC.associatedCity = @"BRIGHAM CITY";
	KBMC.associatedState = @"UT";
	KBMC.latitude = 41.5542;
	KBMC.longitude = 112.062;
	[stationList addObject:KBMC];

	VXReportingStation *KBMG = [VXReportingStation new];
	KBMG.stationIdentifier = @"KBMG";
	KBMG.associatedCity = @"BLOOMINGTON";
	KBMG.associatedState = @"IN";
	KBMG.latitude = 39.1458;
	KBMG.longitude = 86.6167;
	[stationList addObject:KBMG];

	VXReportingStation *KBMI = [VXReportingStation new];
	KBMI.stationIdentifier = @"KBMI";
	KBMI.associatedCity = @"BLOOMINGTON/NORMAL";
	KBMI.associatedState = @"IL";
	KBMI.latitude = 40.4778;
	KBMI.longitude = 88.9158;
	[stationList addObject:KBMI];

	VXReportingStation *KBML = [VXReportingStation new];
	KBML.stationIdentifier = @"KBML";
	KBML.associatedCity = @"BERLIN";
	KBML.associatedState = @"NH";
	KBML.latitude = 44.5753;
	KBML.longitude = 71.1758;
	[stationList addObject:KBML];

	VXReportingStation *KBMQ = [VXReportingStation new];
	KBMQ.stationIdentifier = @"KBMQ";
	KBMQ.associatedCity = @"BURNET";
	KBMQ.associatedState = @"TX";
	KBMQ.latitude = 30.7389;
	KBMQ.longitude = 98.2383;
	[stationList addObject:KBMQ];

	VXReportingStation *KBMT = [VXReportingStation new];
	KBMT.stationIdentifier = @"KBMT";
	KBMT.associatedCity = @"BEAUMONT";
	KBMT.associatedState = @"TX";
	KBMT.latitude = 30.07;
	KBMT.longitude = 94.215;
	[stationList addObject:KBMT];

	VXReportingStation *KBNA = [VXReportingStation new];
	KBNA.stationIdentifier = @"KBNA";
	KBNA.associatedCity = @"NASHVILLE";
	KBNA.associatedState = @"TN";
	KBNA.latitude = 36.1244;
	KBNA.longitude = 86.6781;
	[stationList addObject:KBNA];

	VXReportingStation *KBNL = [VXReportingStation new];
	KBNL.stationIdentifier = @"KBNL";
	KBNL.associatedCity = @"BARNWELL";
	KBNL.associatedState = @"SC";
	KBNL.latitude = 33.2578;
	KBNL.longitude = 81.3883;
	[stationList addObject:KBNL];

	VXReportingStation *KBNO = [VXReportingStation new];
	KBNO.stationIdentifier = @"KBNO";
	KBNO.associatedCity = @"BURNS";
	KBNO.associatedState = @"OR";
	KBNO.latitude = 43.5917;
	KBNO.longitude = 118.955;
	[stationList addObject:KBNO];

	VXReportingStation *KBNW = [VXReportingStation new];
	KBNW.stationIdentifier = @"KBNW";
	KBNW.associatedCity = @"BOONE";
	KBNW.associatedState = @"IA";
	KBNW.latitude = 42.0494;
	KBNW.longitude = 93.8475;
	[stationList addObject:KBNW];

	VXReportingStation *KBNY = [VXReportingStation new];
	KBNY.stationIdentifier = @"KBNY";
	KBNY.associatedCity = @"BURNEY";
	KBNY.associatedState = @"CA";
	KBNY.latitude = 40.8831;
	KBNY.longitude = 121.668;
	[stationList addObject:KBNY];

	VXReportingStation *KBOI = [VXReportingStation new];
	KBOI.stationIdentifier = @"KBOI";
	KBOI.associatedCity = @"BOISE";
	KBOI.associatedState = @"ID";
	KBOI.latitude = 43.5642;
	KBOI.longitude = 116.223;
	[stationList addObject:KBOI];

	VXReportingStation *KBOK = [VXReportingStation new];
	KBOK.stationIdentifier = @"KBOK";
	KBOK.associatedCity = @"BROOKINGS";
	KBOK.associatedState = @"OR";
	KBOK.latitude = 42.0761;
	KBOK.longitude = 124.29;
	[stationList addObject:KBOK];

	VXReportingStation *KBOS = [VXReportingStation new];
	KBOS.stationIdentifier = @"KBOS";
	KBOS.associatedCity = @"BOSTON";
	KBOS.associatedState = @"MA";
	KBOS.latitude = 42.3642;
	KBOS.longitude = 71.005;
	[stationList addObject:KBOS];

	VXReportingStation *KBOW = [VXReportingStation new];
	KBOW.stationIdentifier = @"KBOW";
	KBOW.associatedCity = @"BARTOW";
	KBOW.associatedState = @"FL";
	KBOW.latitude = 27.9433;
	KBOW.longitude = 81.7833;
	[stationList addObject:KBOW];

	VXReportingStation *KBPC = [VXReportingStation new];
	KBPC.stationIdentifier = @"KBPC";
	KBPC.associatedCity = @"PAMPA";
	KBPC.associatedState = @"TX";
	KBPC.latitude = 35.6;
	KBPC.longitude = 100.983;
	[stationList addObject:KBPC];

	VXReportingStation *KBPG = [VXReportingStation new];
	KBPG.stationIdentifier = @"KBPG";
	KBPG.associatedCity = @"BIG SPRING";
	KBPG.associatedState = @"TX";
	KBPG.latitude = 32.2125;
	KBPG.longitude = 101.521;
	[stationList addObject:KBPG];

	VXReportingStation *KBPI = [VXReportingStation new];
	KBPI.stationIdentifier = @"KBPI";
	KBPI.associatedCity = @"BIG PINEY";
	KBPI.associatedState = @"WY";
	KBPI.latitude = 42.585;
	KBPI.longitude = 110.111;
	[stationList addObject:KBPI];

	VXReportingStation *KBPK = [VXReportingStation new];
	KBPK.stationIdentifier = @"KBPK";
	KBPK.associatedCity = @"MOUNTAIN HOME";
	KBPK.associatedState = @"AR";
	KBPK.latitude = 36.3689;
	KBPK.longitude = 92.4703;
	[stationList addObject:KBPK];

	VXReportingStation *KBPP = [VXReportingStation new];
	KBPP.stationIdentifier = @"KBPP";
	KBPP.associatedCity = @"BOWMAN";
	KBPP.associatedState = @"ND";
	KBPP.latitude = 46.1869;
	KBPP.longitude = 103.428;
	[stationList addObject:KBPP];

	VXReportingStation *KBPT = [VXReportingStation new];
	KBPT.stationIdentifier = @"KBPT";
	KBPT.associatedCity = @"BEAUMONT/PORT ARTHUR";
	KBPT.associatedState = @"TX";
	KBPT.latitude = 29.9508;
	KBPT.longitude = 94.0206;
	[stationList addObject:KBPT];

	VXReportingStation *KBQK = [VXReportingStation new];
	KBQK.stationIdentifier = @"KBQK";
	KBQK.associatedCity = @"BRUNSWICK";
	KBQK.associatedState = @"GA";
	KBQK.latitude = 31.2586;
	KBQK.longitude = 81.4664;
	[stationList addObject:KBQK];

	VXReportingStation *KBQP = [VXReportingStation new];
	KBQP.stationIdentifier = @"KBQP";
	KBQP.associatedCity = @"BASTROP";
	KBQP.associatedState = @"LA";
	KBQP.latitude = 32.7558;
	KBQP.longitude = 91.8806;
	[stationList addObject:KBQP];

	VXReportingStation *KBQX = [VXReportingStation new];
	KBQX.stationIdentifier = @"KBQX";
	KBQX.associatedCity = @"BRAZOS 451";
	KBQX.associatedState = @"TX";
	KBQX.latitude = 28.4936;
	KBQX.longitude = 95.7244;
	[stationList addObject:KBQX];

	VXReportingStation *KBRD = [VXReportingStation new];
	KBRD.stationIdentifier = @"KBRD";
	KBRD.associatedCity = @"BRAINERD";
	KBRD.associatedState = @"MN";
	KBRD.latitude = 46.3978;
	KBRD.longitude = 94.1372;
	[stationList addObject:KBRD];

	VXReportingStation *KBRL = [VXReportingStation new];
	KBRL.stationIdentifier = @"KBRL";
	KBRL.associatedCity = @"BURLINGTON";
	KBRL.associatedState = @"IA";
	KBRL.latitude = 40.7831;
	KBRL.longitude = 91.1253;
	[stationList addObject:KBRL];

	VXReportingStation *KBRO = [VXReportingStation new];
	KBRO.stationIdentifier = @"KBRO";
	KBRO.associatedCity = @"BROWNSVILLE";
	KBRO.associatedState = @"TX";
	KBRO.latitude = 25.9067;
	KBRO.longitude = 97.4258;
	[stationList addObject:KBRO];

	VXReportingStation *KBTA = [VXReportingStation new];
	KBTA.stationIdentifier = @"KBTA";
	KBTA.associatedCity = @"BLAIR";
	KBTA.associatedState = @"NE";
	KBTA.latitude = 41.4178;
	KBTA.longitude = 96.1136;
	[stationList addObject:KBTA];

	VXReportingStation *KBTL = [VXReportingStation new];
	KBTL.stationIdentifier = @"KBTL";
	KBTL.associatedCity = @"BATTLE CREEK";
	KBTL.associatedState = @"MI";
	KBTL.latitude = 42.3072;
	KBTL.longitude = 85.2514;
	[stationList addObject:KBTL];

	VXReportingStation *KBTM = [VXReportingStation new];
	KBTM.stationIdentifier = @"KBTM";
	KBTM.associatedCity = @"BUTTE";
	KBTM.associatedState = @"MT";
	KBTM.latitude = 45.9547;
	KBTM.longitude = 112.497;
	[stationList addObject:KBTM];

	VXReportingStation *KBTP = [VXReportingStation new];
	KBTP.stationIdentifier = @"KBTP";
	KBTP.associatedCity = @"BUTLER";
	KBTP.associatedState = @"PA";
	KBTP.latitude = 40.7767;
	KBTP.longitude = 79.9497;
	[stationList addObject:KBTP];

	VXReportingStation *KBTR = [VXReportingStation new];
	KBTR.stationIdentifier = @"KBTR";
	KBTR.associatedCity = @"BATON ROUGE";
	KBTR.associatedState = @"LA";
	KBTR.latitude = 30.5331;
	KBTR.longitude = 91.1494;
	[stationList addObject:KBTR];

	VXReportingStation *KBTV = [VXReportingStation new];
	KBTV.stationIdentifier = @"KBTV";
	KBTV.associatedCity = @"BURLINGTON";
	KBTV.associatedState = @"VT";
	KBTV.latitude = 44.4717;
	KBTV.longitude = 73.1531;
	[stationList addObject:KBTV];

	VXReportingStation *KBUF = [VXReportingStation new];
	KBUF.stationIdentifier = @"KBUF";
	KBUF.associatedCity = @"BUFFALO";
	KBUF.associatedState = @"NY";
	KBUF.latitude = 42.9403;
	KBUF.longitude = 78.7319;
	[stationList addObject:KBUF];

	VXReportingStation *KBUO = [VXReportingStation new];
	KBUO.stationIdentifier = @"KBUO";
	KBUO.associatedCity = @"BEAUMONT";
	KBUO.associatedState = @"CA";
	KBUO.latitude = 33.9333;
	KBUO.longitude = 116.951;
	[stationList addObject:KBUO];

	VXReportingStation *KBUR = [VXReportingStation new];
	KBUR.stationIdentifier = @"KBUR";
	KBUR.associatedCity = @"BURBANK";
	KBUR.associatedState = @"CA";
	KBUR.latitude = 34.2006;
	KBUR.longitude = 118.359;
	[stationList addObject:KBUR];

	VXReportingStation *KBUY = [VXReportingStation new];
	KBUY.stationIdentifier = @"KBUY";
	KBUY.associatedCity = @"BURLINGTON";
	KBUY.associatedState = @"NC";
	KBUY.latitude = 36.0483;
	KBUY.longitude = 79.4747;
	[stationList addObject:KBUY];

	VXReportingStation *KBVE = [VXReportingStation new];
	KBVE.stationIdentifier = @"KBVE";
	KBVE.associatedCity = @"BOOTHVILLE";
	KBVE.associatedState = @"LA";
	KBVE.latitude = 29.3333;
	KBVE.longitude = 89.4;
	[stationList addObject:KBVE];

	VXReportingStation *KBVI = [VXReportingStation new];
	KBVI.stationIdentifier = @"KBVI";
	KBVI.associatedCity = @"BEAVER FALLS";
	KBVI.associatedState = @"PA";
	KBVI.latitude = 40.7722;
	KBVI.longitude = 80.3914;
	[stationList addObject:KBVI];

	VXReportingStation *KBVN = [VXReportingStation new];
	KBVN.stationIdentifier = @"KBVN";
	KBVN.associatedCity = @"ALBION";
	KBVN.associatedState = @"NE";
	KBVN.latitude = 41.7283;
	KBVN.longitude = 98.0556;
	[stationList addObject:KBVN];

	VXReportingStation *KBVO = [VXReportingStation new];
	KBVO.stationIdentifier = @"KBVO";
	KBVO.associatedCity = @"BARTLESVILLE";
	KBVO.associatedState = @"OK";
	KBVO.latitude = 36.7622;
	KBVO.longitude = 96.0111;
	[stationList addObject:KBVO];

	VXReportingStation *KBVS = [VXReportingStation new];
	KBVS.stationIdentifier = @"KBVS";
	KBVS.associatedCity = @"BURLINGTON/MOUNT VERNON";
	KBVS.associatedState = @"WA";
	KBVS.latitude = 48.4708;
	KBVS.longitude = 122.421;
	[stationList addObject:KBVS];

	VXReportingStation *KBVU = [VXReportingStation new];
	KBVU.stationIdentifier = @"KBVU";
	KBVU.associatedCity = @"BOULDER CITY";
	KBVU.associatedState = @"NV";
	KBVU.latitude = 35.9472;
	KBVU.longitude = 114.861;
	[stationList addObject:KBVU];

	VXReportingStation *KBVX = [VXReportingStation new];
	KBVX.stationIdentifier = @"KBVX";
	KBVX.associatedCity = @"BATESVILLE";
	KBVX.associatedState = @"AR";
	KBVX.latitude = 35.7261;
	KBVX.longitude = 91.6469;
	[stationList addObject:KBVX];

	VXReportingStation *KBVY = [VXReportingStation new];
	KBVY.stationIdentifier = @"KBVY";
	KBVY.associatedCity = @"BEVERLY";
	KBVY.associatedState = @"MA";
	KBVY.latitude = 42.5842;
	KBVY.longitude = 70.9164;
	[stationList addObject:KBVY];

	VXReportingStation *KBWD = [VXReportingStation new];
	KBWD.stationIdentifier = @"KBWD";
	KBWD.associatedCity = @"BROWNWOOD";
	KBWD.associatedState = @"TX";
	KBWD.latitude = 31.7936;
	KBWD.longitude = 98.9564;
	[stationList addObject:KBWD];

	VXReportingStation *KBWG = [VXReportingStation new];
	KBWG.stationIdentifier = @"KBWG";
	KBWG.associatedCity = @"BOWLING GREEN";
	KBWG.associatedState = @"KY";
	KBWG.latitude = 36.9644;
	KBWG.longitude = 86.4194;
	[stationList addObject:KBWG];

	VXReportingStation *KBWI = [VXReportingStation new];
	KBWI.stationIdentifier = @"KBWI";
	KBWI.associatedCity = @"BALTIMORE";
	KBWI.associatedState = @"MD";
	KBWI.latitude = 39.1753;
	KBWI.longitude = 76.6683;
	[stationList addObject:KBWI];

	VXReportingStation *KBXA = [VXReportingStation new];
	KBXA.stationIdentifier = @"KBXA";
	KBXA.associatedCity = @"BOGALUSA";
	KBXA.associatedState = @"LA";
	KBXA.latitude = 30.8136;
	KBXA.longitude = 89.8647;
	[stationList addObject:KBXA];

	VXReportingStation *KBXK = [VXReportingStation new];
	KBXK.stationIdentifier = @"KBXK";
	KBXK.associatedCity = @"BUCKEYE";
	KBXK.associatedState = @"AZ";
	KBXK.latitude = 33.4203;
	KBXK.longitude = 112.686;
	[stationList addObject:KBXK];

	VXReportingStation *KBYG = [VXReportingStation new];
	KBYG.stationIdentifier = @"KBYG";
	KBYG.associatedCity = @"BUFFALO";
	KBYG.associatedState = @"WY";
	KBYG.latitude = 44.3808;
	KBYG.longitude = 106.722;
	[stationList addObject:KBYG];

	VXReportingStation *KBYH = [VXReportingStation new];
	KBYH.stationIdentifier = @"KBYH";
	KBYH.associatedCity = @"BLYTHEVILLE";
	KBYH.associatedState = @"AR";
	KBYH.latitude = 35.9642;
	KBYH.longitude = 89.9439;
	[stationList addObject:KBYH];

	VXReportingStation *KBYI = [VXReportingStation new];
	KBYI.stationIdentifier = @"KBYI";
	KBYI.associatedCity = @"BURLEY";
	KBYI.associatedState = @"ID";
	KBYI.latitude = 42.5425;
	KBYI.longitude = 113.771;
	[stationList addObject:KBYI];

	VXReportingStation *KBYY = [VXReportingStation new];
	KBYY.stationIdentifier = @"KBYY";
	KBYY.associatedCity = @"BAY CITY";
	KBYY.associatedState = @"TX";
	KBYY.latitude = 28.9731;
	KBYY.longitude = 95.8633;
	[stationList addObject:KBYY];

	VXReportingStation *KBZN = [VXReportingStation new];
	KBZN.stationIdentifier = @"KBZN";
	KBZN.associatedCity = @"BOZEMAN";
	KBZN.associatedState = @"MT";
	KBZN.latitude = 45.7772;
	KBZN.longitude = 111.153;
	[stationList addObject:KBZN];

	VXReportingStation *KC09 = [VXReportingStation new];
	KC09.stationIdentifier = @"KC09";
	KC09.associatedCity = @"MORRIS";
	KC09.associatedState = @"IL";
	KC09.latitude = 41.4253;
	KC09.longitude = 88.4186;
	[stationList addObject:KC09];

	VXReportingStation *KC35 = [VXReportingStation new];
	KC35.stationIdentifier = @"KC35";
	KC35.associatedCity = @"REEDSBURG";
	KC35.associatedState = @"WI";
	KC35.latitude = 43.5258;
	KC35.longitude = 89.9831;
	[stationList addObject:KC35];

	VXReportingStation *KC75 = [VXReportingStation new];
	KC75.stationIdentifier = @"KC75";
	KC75.associatedCity = @"LACON";
	KC75.associatedState = @"IL";
	KC75.latitude = 41.0192;
	KC75.longitude = 89.3864;
	[stationList addObject:KC75];

	VXReportingStation *KCAD = [VXReportingStation new];
	KCAD.stationIdentifier = @"KCAD";
	KCAD.associatedCity = @"CADILLAC";
	KCAD.associatedState = @"MI";
	KCAD.latitude = 44.2753;
	KCAD.longitude = 85.4189;
	[stationList addObject:KCAD];

	VXReportingStation *KCAE = [VXReportingStation new];
	KCAE.stationIdentifier = @"KCAE";
	KCAE.associatedCity = @"COLUMBIA";
	KCAE.associatedState = @"SC";
	KCAE.latitude = 33.9386;
	KCAE.longitude = 81.1194;
	[stationList addObject:KCAE];

	VXReportingStation *KCAG = [VXReportingStation new];
	KCAG.stationIdentifier = @"KCAG";
	KCAG.associatedCity = @"CRAIG";
	KCAG.associatedState = @"CO";
	KCAG.latitude = 40.495;
	KCAG.longitude = 107.521;
	[stationList addObject:KCAG];

	VXReportingStation *KCAK = [VXReportingStation new];
	KCAK.stationIdentifier = @"KCAK";
	KCAK.associatedCity = @"AKRON";
	KCAK.associatedState = @"OH";
	KCAK.latitude = 40.9161;
	KCAK.longitude = 81.4422;
	[stationList addObject:KCAK];

	VXReportingStation *KCAO = [VXReportingStation new];
	KCAO.stationIdentifier = @"KCAO";
	KCAO.associatedCity = @"CLAYTON";
	KCAO.associatedState = @"NM";
	KCAO.latitude = 36.445;
	KCAO.longitude = 103.15;
	[stationList addObject:KCAO];

	VXReportingStation *KCAR = [VXReportingStation new];
	KCAR.stationIdentifier = @"KCAR";
	KCAR.associatedCity = @"CARIBOU";
	KCAR.associatedState = @"ME";
	KCAR.latitude = 46.8714;
	KCAR.longitude = 68.0178;
	[stationList addObject:KCAR];

	VXReportingStation *KCAV = [VXReportingStation new];
	KCAV.stationIdentifier = @"KCAV";
	KCAV.associatedCity = @"CLARION";
	KCAV.associatedState = @"IA";
	KCAV.latitude = 42.7417;
	KCAV.longitude = 93.7589;
	[stationList addObject:KCAV];

	VXReportingStation *KCBE = [VXReportingStation new];
	KCBE.stationIdentifier = @"KCBE";
	KCBE.associatedCity = @"CUMBERLAND";
	KCBE.associatedState = @"MD";
	KCBE.latitude = 39.6153;
	KCBE.longitude = 78.7608;
	[stationList addObject:KCBE];

	VXReportingStation *KCBF = [VXReportingStation new];
	KCBF.stationIdentifier = @"KCBF";
	KCBF.associatedCity = @"COUNCIL BLUFFS";
	KCBF.associatedState = @"IA";
	KCBF.latitude = 41.2594;
	KCBF.longitude = 95.7597;
	[stationList addObject:KCBF];

	VXReportingStation *KCBG = [VXReportingStation new];
	KCBG.stationIdentifier = @"KCBG";
	KCBG.associatedCity = @"CAMBRIDGE";
	KCBG.associatedState = @"MN";
	KCBG.latitude = 45.5594;
	KCBG.longitude = 93.265;
	[stationList addObject:KCBG];

	VXReportingStation *KCBK = [VXReportingStation new];
	KCBK.stationIdentifier = @"KCBK";
	KCBK.associatedCity = @"COLBY";
	KCBK.associatedState = @"KS";
	KCBK.latitude = 39.4272;
	KCBK.longitude = 101.046;
	[stationList addObject:KCBK];

	VXReportingStation *KCBM = [VXReportingStation new];
	KCBM.stationIdentifier = @"KCBM";
	KCBM.associatedCity = @"COLUMBUS";
	KCBM.associatedState = @"MS";
	KCBM.latitude = 33.6436;
	KCBM.longitude = 88.4436;
	[stationList addObject:KCBM];

	VXReportingStation *KCCA = [VXReportingStation new];
	KCCA.stationIdentifier = @"KCCA";
	KCCA.associatedCity = @"CLINTON";
	KCCA.associatedState = @"AR";
	KCCA.latitude = 35.5975;
	KCCA.longitude = 92.4514;
	[stationList addObject:KCCA];

	VXReportingStation *KCCO = [VXReportingStation new];
	KCCO.stationIdentifier = @"KCCO";
	KCCO.associatedCity = @"ATLANTA";
	KCCO.associatedState = @"GA";
	KCCO.latitude = 33.3106;
	KCCO.longitude = 84.7711;
	[stationList addObject:KCCO];

	VXReportingStation *KCCR = [VXReportingStation new];
	KCCR.stationIdentifier = @"KCCR";
	KCCR.associatedCity = @"CONCORD";
	KCCR.associatedState = @"CA";
	KCCR.latitude = 37.9894;
	KCCR.longitude = 122.057;
	[stationList addObject:KCCR];

	VXReportingStation *KCCU = [VXReportingStation new];
	KCCU.stationIdentifier = @"KCCU";
	KCCU.associatedCity = @"COPPER MOUNTAIN";
	KCCU.associatedState = @"CO";
	KCCU.latitude = 39.475;
	KCCU.longitude = 106.153;
	[stationList addObject:KCCU];

	VXReportingStation *KCCY = [VXReportingStation new];
	KCCY.stationIdentifier = @"KCCY";
	KCCY.associatedCity = @"CHARLES CITY";
	KCCY.associatedState = @"IA";
	KCCY.latitude = 43.0725;
	KCCY.longitude = 92.6106;
	[stationList addObject:KCCY];

	VXReportingStation *KCDA = [VXReportingStation new];
	KCDA.stationIdentifier = @"KCDA";
	KCDA.associatedCity = @"LYNDONVILLE";
	KCDA.associatedState = @"VT";
	KCDA.latitude = 44.5689;
	KCDA.longitude = 72.0178;
	[stationList addObject:KCDA];

	VXReportingStation *KCDC = [VXReportingStation new];
	KCDC.stationIdentifier = @"KCDC";
	KCDC.associatedCity = @"CEDAR CITY";
	KCDC.associatedState = @"UT";
	KCDC.latitude = 37.7008;
	KCDC.longitude = 113.099;
	[stationList addObject:KCDC];

	VXReportingStation *KCDD = [VXReportingStation new];
	KCDD.stationIdentifier = @"KCDD";
	KCDD.associatedCity = @"CRANE LAKE";
	KCDD.associatedState = @"MN";
	KCDD.latitude = 48.2664;
	KCDD.longitude = 92.4833;
	[stationList addObject:KCDD];

	VXReportingStation *KCDH = [VXReportingStation new];
	KCDH.stationIdentifier = @"KCDH";
	KCDH.associatedCity = @"CAMDEN";
	KCDH.associatedState = @"AR";
	KCDH.latitude = 33.6228;
	KCDH.longitude = 92.7633;
	[stationList addObject:KCDH];

	VXReportingStation *KCDN = [VXReportingStation new];
	KCDN.stationIdentifier = @"KCDN";
	KCDN.associatedCity = @"CAMDEN";
	KCDN.associatedState = @"SC";
	KCDN.latitude = 34.2833;
	KCDN.longitude = 80.5647;
	[stationList addObject:KCDN];

	VXReportingStation *KCDR = [VXReportingStation new];
	KCDR.stationIdentifier = @"KCDR";
	KCDR.associatedCity = @"CHADRON";
	KCDR.associatedState = @"NE";
	KCDR.latitude = 42.8375;
	KCDR.longitude = 103.095;
	[stationList addObject:KCDR];

	VXReportingStation *KCDS = [VXReportingStation new];
	KCDS.stationIdentifier = @"KCDS";
	KCDS.associatedCity = @"CHILDRESS";
	KCDS.associatedState = @"TX";
	KCDS.latitude = 34.4336;
	KCDS.longitude = 100.288;
	[stationList addObject:KCDS];

	VXReportingStation *KCDW = [VXReportingStation new];
	KCDW.stationIdentifier = @"KCDW";
	KCDW.associatedCity = @"CALDWELL";
	KCDW.associatedState = @"NJ";
	KCDW.latitude = 40.875;
	KCDW.longitude = 74.2811;
	[stationList addObject:KCDW];

	VXReportingStation *KCEC = [VXReportingStation new];
	KCEC.stationIdentifier = @"KCEC";
	KCEC.associatedCity = @"CRESCENT CITY";
	KCEC.associatedState = @"CA";
	KCEC.latitude = 41.78;
	KCEC.longitude = 124.236;
	[stationList addObject:KCEC];

	VXReportingStation *KCEF = [VXReportingStation new];
	KCEF.stationIdentifier = @"KCEF";
	KCEF.associatedCity = @"SPRINGFIELD/CHICOPEE";
	KCEF.associatedState = @"MA";
	KCEF.latitude = 42.1939;
	KCEF.longitude = 72.5347;
	[stationList addObject:KCEF];

	VXReportingStation *KCEU = [VXReportingStation new];
	KCEU.stationIdentifier = @"KCEU";
	KCEU.associatedCity = @"CLEMSON";
	KCEU.associatedState = @"SC";
	KCEU.latitude = 34.6717;
	KCEU.longitude = 82.8867;
	[stationList addObject:KCEU];

	VXReportingStation *KCEW = [VXReportingStation new];
	KCEW.stationIdentifier = @"KCEW";
	KCEW.associatedCity = @"CRESTVIEW";
	KCEW.associatedState = @"FL";
	KCEW.latitude = 30.7786;
	KCEW.longitude = 86.5219;
	[stationList addObject:KCEW];

	VXReportingStation *KCEZ = [VXReportingStation new];
	KCEZ.stationIdentifier = @"KCEZ";
	KCEZ.associatedCity = @"CORTEZ";
	KCEZ.associatedState = @"CO";
	KCEZ.latitude = 37.3028;
	KCEZ.longitude = 108.628;
	[stationList addObject:KCEZ];

	VXReportingStation *KCFD = [VXReportingStation new];
	KCFD.stationIdentifier = @"KCFD";
	KCFD.associatedCity = @"BRYAN";
	KCFD.associatedState = @"TX";
	KCFD.latitude = 30.7169;
	KCFD.longitude = 96.3347;
	[stationList addObject:KCFD];

	VXReportingStation *KCFE = [VXReportingStation new];
	KCFE.stationIdentifier = @"KCFE";
	KCFE.associatedCity = @"BUFFALO";
	KCFE.associatedState = @"MN";
	KCFE.latitude = 45.1589;
	KCFE.longitude = 93.8431;
	[stationList addObject:KCFE];

	VXReportingStation *KCFS = [VXReportingStation new];
	KCFS.stationIdentifier = @"KCFS";
	KCFS.associatedCity = @"CARO";
	KCFS.associatedState = @"MI";
	KCFS.latitude = 43.4586;
	KCFS.longitude = 83.4453;
	[stationList addObject:KCFS];

	VXReportingStation *KCFV = [VXReportingStation new];
	KCFV.stationIdentifier = @"KCFV";
	KCFV.associatedCity = @"COFFEYVILLE";
	KCFV.associatedState = @"KS";
	KCFV.latitude = 37.0939;
	KCFV.longitude = 95.5717;
	[stationList addObject:KCFV];

	VXReportingStation *KCGC = [VXReportingStation new];
	KCGC.stationIdentifier = @"KCGC";
	KCGC.associatedCity = @"CRYSTAL RIVER";
	KCGC.associatedState = @"FL";
	KCGC.latitude = 28.8672;
	KCGC.longitude = 82.5711;
	[stationList addObject:KCGC];

	VXReportingStation *KCGE = [VXReportingStation new];
	KCGE.stationIdentifier = @"KCGE";
	KCGE.associatedCity = @"CAMBRIDGE";
	KCGE.associatedState = @"MD";
	KCGE.latitude = 38.5392;
	KCGE.longitude = 76.0303;
	[stationList addObject:KCGE];

	VXReportingStation *KCGF = [VXReportingStation new];
	KCGF.stationIdentifier = @"KCGF";
	KCGF.associatedCity = @"CLEVELAND";
	KCGF.associatedState = @"OH";
	KCGF.latitude = 41.565;
	KCGF.longitude = 81.4861;
	[stationList addObject:KCGF];

	VXReportingStation *KCGI = [VXReportingStation new];
	KCGI.stationIdentifier = @"KCGI";
	KCGI.associatedCity = @"CAPE GIRARDEAU";
	KCGI.associatedState = @"MO";
	KCGI.latitude = 37.2253;
	KCGI.longitude = 89.5706;
	[stationList addObject:KCGI];

	VXReportingStation *KCGS = [VXReportingStation new];
	KCGS.stationIdentifier = @"KCGS";
	KCGS.associatedCity = @"COLLEGE PARK";
	KCGS.associatedState = @"MD";
	KCGS.latitude = 38.9806;
	KCGS.longitude = 76.9222;
	[stationList addObject:KCGS];

	VXReportingStation *KCGZ = [VXReportingStation new];
	KCGZ.stationIdentifier = @"KCGZ";
	KCGZ.associatedCity = @"CASA GRANDE";
	KCGZ.associatedState = @"AZ";
	KCGZ.latitude = 32.9547;
	KCGZ.longitude = 111.767;
	[stationList addObject:KCGZ];

	VXReportingStation *KCHA = [VXReportingStation new];
	KCHA.stationIdentifier = @"KCHA";
	KCHA.associatedCity = @"CHATTANOOGA";
	KCHA.associatedState = @"TN";
	KCHA.latitude = 35.035;
	KCHA.longitude = 85.2036;
	[stationList addObject:KCHA];

	VXReportingStation *KCHH = [VXReportingStation new];
	KCHH.stationIdentifier = @"KCHH";
	KCHH.associatedCity = @"CHATHAM";
	KCHH.associatedState = @"MA";
	KCHH.latitude = 41.6667;
	KCHH.longitude = 69.9661;
	[stationList addObject:KCHH];

	VXReportingStation *KCHK = [VXReportingStation new];
	KCHK.stationIdentifier = @"KCHK";
	KCHK.associatedCity = @"CHICKASHA";
	KCHK.associatedState = @"OK";
	KCHK.latitude = 35.0972;
	KCHK.longitude = 97.9675;
	[stationList addObject:KCHK];

	VXReportingStation *KCHO = [VXReportingStation new];
	KCHO.stationIdentifier = @"KCHO";
	KCHO.associatedCity = @"CHARLOTTESVILLE";
	KCHO.associatedState = @"VA";
	KCHO.latitude = 38.1386;
	KCHO.longitude = 78.4528;
	[stationList addObject:KCHO];

	VXReportingStation *KCHS = [VXReportingStation new];
	KCHS.stationIdentifier = @"KCHS";
	KCHS.associatedCity = @"CHARLESTON";
	KCHS.associatedState = @"SC";
	KCHS.latitude = 32.8986;
	KCHS.longitude = 80.0403;
	[stationList addObject:KCHS];

	VXReportingStation *KCIC = [VXReportingStation new];
	KCIC.stationIdentifier = @"KCIC";
	KCIC.associatedCity = @"CHICO";
	KCIC.associatedState = @"CA";
	KCIC.latitude = 39.7953;
	KCIC.longitude = 121.858;
	[stationList addObject:KCIC];

	VXReportingStation *KCID = [VXReportingStation new];
	KCID.stationIdentifier = @"KCID";
	KCID.associatedCity = @"CEDAR RAPIDS";
	KCID.associatedState = @"IA";
	KCID.latitude = 41.8844;
	KCID.longitude = 91.7106;
	[stationList addObject:KCID];

	VXReportingStation *KCIN = [VXReportingStation new];
	KCIN.stationIdentifier = @"KCIN";
	KCIN.associatedCity = @"CARROLL";
	KCIN.associatedState = @"IA";
	KCIN.latitude = 42.0461;
	KCIN.longitude = 94.7889;
	[stationList addObject:KCIN];

	VXReportingStation *KCIR = [VXReportingStation new];
	KCIR.stationIdentifier = @"KCIR";
	KCIR.associatedCity = @"CAIRO";
	KCIR.associatedState = @"IL";
	KCIR.latitude = 37.0644;
	KCIR.longitude = 89.2194;
	[stationList addObject:KCIR];

	VXReportingStation *KCIU = [VXReportingStation new];
	KCIU.stationIdentifier = @"KCIU";
	KCIU.associatedCity = @"SAULT STE MARIE";
	KCIU.associatedState = @"MI";
	KCIU.latitude = 46.2506;
	KCIU.longitude = 84.4722;
	[stationList addObject:KCIU];

	VXReportingStation *KCJR = [VXReportingStation new];
	KCJR.stationIdentifier = @"KCJR";
	KCJR.associatedCity = @"CULPEPER";
	KCJR.associatedState = @"VA";
	KCJR.latitude = 38.5267;
	KCJR.longitude = 77.8586;
	[stationList addObject:KCJR];

	VXReportingStation *KCKB = [VXReportingStation new];
	KCKB.stationIdentifier = @"KCKB";
	KCKB.associatedCity = @"CLARKSBURG";
	KCKB.associatedState = @"WV";
	KCKB.latitude = 39.2964;
	KCKB.longitude = 80.2281;
	[stationList addObject:KCKB];

	VXReportingStation *KCKC = [VXReportingStation new];
	KCKC.stationIdentifier = @"KCKC";
	KCKC.associatedCity = @"GRAND MARAIS";
	KCKC.associatedState = @"MN";
	KCKC.latitude = 47.8383;
	KCKC.longitude = 90.3828;
	[stationList addObject:KCKC];

	VXReportingStation *KCKF = [VXReportingStation new];
	KCKF.stationIdentifier = @"KCKF";
	KCKF.associatedCity = @"CORDELE";
	KCKF.associatedState = @"GA";
	KCKF.latitude = 31.9886;
	KCKF.longitude = 83.7739;
	[stationList addObject:KCKF];

	VXReportingStation *KCKI = [VXReportingStation new];
	KCKI.stationIdentifier = @"KCKI";
	KCKI.associatedCity = @"KINGSTREE";
	KCKI.associatedState = @"SC";
	KCKI.latitude = 33.7172;
	KCKI.longitude = 79.8569;
	[stationList addObject:KCKI];

	VXReportingStation *KCKM = [VXReportingStation new];
	KCKM.stationIdentifier = @"KCKM";
	KCKM.associatedCity = @"CLARKSDALE";
	KCKM.associatedState = @"MS";
	KCKM.latitude = 34.2997;
	KCKM.longitude = 90.5122;
	[stationList addObject:KCKM];

	VXReportingStation *KCKN = [VXReportingStation new];
	KCKN.stationIdentifier = @"KCKN";
	KCKN.associatedCity = @"CROOKSTON";
	KCKN.associatedState = @"MN";
	KCKN.latitude = 47.8417;
	KCKN.longitude = 96.6214;
	[stationList addObject:KCKN];

	VXReportingStation *KCKV = [VXReportingStation new];
	KCKV.stationIdentifier = @"KCKV";
	KCKV.associatedCity = @"CLARKSVILLE";
	KCKV.associatedState = @"TN";
	KCKV.latitude = 36.6217;
	KCKV.longitude = 87.4147;
	[stationList addObject:KCKV];

	VXReportingStation *KCLE = [VXReportingStation new];
	KCLE.stationIdentifier = @"KCLE";
	KCLE.associatedCity = @"CLEVELAND";
	KCLE.associatedState = @"OH";
	KCLE.latitude = 41.4117;
	KCLE.longitude = 81.8497;
	[stationList addObject:KCLE];

	VXReportingStation *KCLI = [VXReportingStation new];
	KCLI.stationIdentifier = @"KCLI";
	KCLI.associatedCity = @"CLINTONVILLE";
	KCLI.associatedState = @"WI";
	KCLI.latitude = 44.6136;
	KCLI.longitude = 88.7311;
	[stationList addObject:KCLI];

	VXReportingStation *KCLK = [VXReportingStation new];
	KCLK.stationIdentifier = @"KCLK";
	KCLK.associatedCity = @"CLINTON";
	KCLK.associatedState = @"OK";
	KCLK.latitude = 35.5381;
	KCLK.longitude = 98.9325;
	[stationList addObject:KCLK];

	VXReportingStation *KCLL = [VXReportingStation new];
	KCLL.stationIdentifier = @"KCLL";
	KCLL.associatedCity = @"COLLEGE STATION";
	KCLL.associatedState = @"TX";
	KCLL.latitude = 30.5883;
	KCLL.longitude = 96.3636;
	[stationList addObject:KCLL];

	VXReportingStation *KCLM = [VXReportingStation new];
	KCLM.stationIdentifier = @"KCLM";
	KCLM.associatedCity = @"PORT ANGELES";
	KCLM.associatedState = @"WA";
	KCLM.latitude = 48.12;
	KCLM.longitude = 123.499;
	[stationList addObject:KCLM];

	VXReportingStation *KCLS = [VXReportingStation new];
	KCLS.stationIdentifier = @"KCLS";
	KCLS.associatedCity = @"CHEHALIS";
	KCLS.associatedState = @"WA";
	KCLS.latitude = 46.6775;
	KCLS.longitude = 122.986;
	[stationList addObject:KCLS];

	VXReportingStation *KCLT = [VXReportingStation new];
	KCLT.stationIdentifier = @"KCLT";
	KCLT.associatedCity = @"CHARLOTTE";
	KCLT.associatedState = @"NC";
	KCLT.latitude = 35.2139;
	KCLT.longitude = 80.9431;
	[stationList addObject:KCLT];

	VXReportingStation *KCLW = [VXReportingStation new];
	KCLW.stationIdentifier = @"KCLW";
	KCLW.associatedCity = @"CLEARWATER";
	KCLW.associatedState = @"FL";
	KCLW.latitude = 27.9739;
	KCLW.longitude = 82.7561;
	[stationList addObject:KCLW];

	VXReportingStation *KCMA = [VXReportingStation new];
	KCMA.stationIdentifier = @"KCMA";
	KCMA.associatedCity = @"CAMARILLO";
	KCMA.associatedState = @"CA";
	KCMA.latitude = 34.2136;
	KCMA.longitude = 119.094;
	[stationList addObject:KCMA];

	VXReportingStation *KCMD = [VXReportingStation new];
	KCMD.stationIdentifier = @"KCMD";
	KCMD.associatedCity = @"CULLMAN";
	KCMD.associatedState = @"AL";
	KCMD.latitude = 34.2686;
	KCMD.longitude = 86.8578;
	[stationList addObject:KCMD];

	VXReportingStation *KCMH = [VXReportingStation new];
	KCMH.stationIdentifier = @"KCMH";
	KCMH.associatedCity = @"COLUMBUS";
	KCMH.associatedState = @"OH";
	KCMH.latitude = 39.9978;
	KCMH.longitude = 82.8917;
	[stationList addObject:KCMH];

	VXReportingStation *KCMI = [VXReportingStation new];
	KCMI.stationIdentifier = @"KCMI";
	KCMI.associatedCity = @"CHAMPAIGN/URBANA";
	KCMI.associatedState = @"IL";
	KCMI.latitude = 40.0392;
	KCMI.longitude = 88.2781;
	[stationList addObject:KCMI];

	VXReportingStation *KCMR = [VXReportingStation new];
	KCMR.stationIdentifier = @"KCMR";
	KCMR.associatedCity = @"WILLIAMS";
	KCMR.associatedState = @"AZ";
	KCMR.latitude = 35.3025;
	KCMR.longitude = 112.194;
	[stationList addObject:KCMR];

	VXReportingStation *KCMX = [VXReportingStation new];
	KCMX.stationIdentifier = @"KCMX";
	KCMX.associatedCity = @"HANCOCK";
	KCMX.associatedState = @"MI";
	KCMX.latitude = 47.1683;
	KCMX.longitude = 88.4889;
	[stationList addObject:KCMX];

	VXReportingStation *KCNB = [VXReportingStation new];
	KCNB.stationIdentifier = @"KCNB";
	KCNB.associatedCity = @"CANBY";
	KCNB.associatedState = @"MN";
	KCNB.latitude = 44.7294;
	KCNB.longitude = 96.2658;
	[stationList addObject:KCNB];

	VXReportingStation *KCNC = [VXReportingStation new];
	KCNC.stationIdentifier = @"KCNC";
	KCNC.associatedCity = @"CHARITON";
	KCNC.associatedState = @"IA";
	KCNC.latitude = 41.0194;
	KCNC.longitude = 93.3594;
	[stationList addObject:KCNC];

	VXReportingStation *KCNI = [VXReportingStation new];
	KCNI.stationIdentifier = @"KCNI";
	KCNI.associatedCity = @"CANTON";
	KCNI.associatedState = @"GA";
	KCNI.latitude = 34.3106;
	KCNI.longitude = 84.4239;
	[stationList addObject:KCNI];

	VXReportingStation *KCNK = [VXReportingStation new];
	KCNK.stationIdentifier = @"KCNK";
	KCNK.associatedCity = @"CONCORDIA";
	KCNK.associatedState = @"KS";
	KCNK.latitude = 39.5492;
	KCNK.longitude = 97.6522;
	[stationList addObject:KCNK];

	VXReportingStation *KCNM = [VXReportingStation new];
	KCNM.stationIdentifier = @"KCNM";
	KCNM.associatedCity = @"CARLSBAD";
	KCNM.associatedState = @"NM";
	KCNM.latitude = 32.3372;
	KCNM.longitude = 104.263;
	[stationList addObject:KCNM];

	VXReportingStation *KCNO = [VXReportingStation new];
	KCNO.stationIdentifier = @"KCNO";
	KCNO.associatedCity = @"CHINO";
	KCNO.associatedState = @"CA";
	KCNO.latitude = 33.9744;
	KCNO.longitude = 117.636;
	[stationList addObject:KCNO];

	VXReportingStation *KCNU = [VXReportingStation new];
	KCNU.stationIdentifier = @"KCNU";
	KCNU.associatedCity = @"CHANUTE";
	KCNU.associatedState = @"KS";
	KCNU.latitude = 37.6686;
	KCNU.longitude = 95.485;
	[stationList addObject:KCNU];

	VXReportingStation *KCNW = [VXReportingStation new];
	KCNW.stationIdentifier = @"KCNW";
	KCNW.associatedCity = @"WACO";
	KCNW.associatedState = @"TX";
	KCNW.latitude = 31.6378;
	KCNW.longitude = 97.0739;
	[stationList addObject:KCNW];

	VXReportingStation *KCNY = [VXReportingStation new];
	KCNY.stationIdentifier = @"KCNY";
	KCNY.associatedCity = @"MOAB";
	KCNY.associatedState = @"UT";
	KCNY.latitude = 38.7547;
	KCNY.longitude = 109.755;
	[stationList addObject:KCNY];

	VXReportingStation *KCOD = [VXReportingStation new];
	KCOD.stationIdentifier = @"KCOD";
	KCOD.associatedCity = @"CODY";
	KCOD.associatedState = @"WY";
	KCOD.latitude = 44.52;
	KCOD.longitude = 109.024;
	[stationList addObject:KCOD];

	VXReportingStation *KCOE = [VXReportingStation new];
	KCOE.stationIdentifier = @"KCOE";
	KCOE.associatedCity = @"COEUR D'ALENE";
	KCOE.associatedState = @"ID";
	KCOE.latitude = 47.7742;
	KCOE.longitude = 116.819;
	[stationList addObject:KCOE];

	VXReportingStation *KCOF = [VXReportingStation new];
	KCOF.stationIdentifier = @"KCOF";
	KCOF.associatedCity = @"COCOA BEACH";
	KCOF.associatedState = @"FL";
	KCOF.latitude = 28.2347;
	KCOF.longitude = 80.61;
	[stationList addObject:KCOF];

	VXReportingStation *KCON = [VXReportingStation new];
	KCON.stationIdentifier = @"KCON";
	KCON.associatedCity = @"CONCORD";
	KCON.associatedState = @"NH";
	KCON.latitude = 43.2025;
	KCON.longitude = 71.5022;
	[stationList addObject:KCON];

	VXReportingStation *KCOQ = [VXReportingStation new];
	KCOQ.stationIdentifier = @"KCOQ";
	KCOQ.associatedCity = @"CLOQUET";
	KCOQ.associatedState = @"MN";
	KCOQ.latitude = 46.7011;
	KCOQ.longitude = 92.5033;
	[stationList addObject:KCOQ];

	VXReportingStation *KCOS = [VXReportingStation new];
	KCOS.stationIdentifier = @"KCOS";
	KCOS.associatedCity = @"COLORADO SPRINGS";
	KCOS.associatedState = @"CO";
	KCOS.latitude = 38.8056;
	KCOS.longitude = 104.7;
	[stationList addObject:KCOS];

	VXReportingStation *KCOT = [VXReportingStation new];
	KCOT.stationIdentifier = @"KCOT";
	KCOT.associatedCity = @"COTULLA";
	KCOT.associatedState = @"TX";
	KCOT.latitude = 28.4581;
	KCOT.longitude = 99.22;
	[stationList addObject:KCOT];

	VXReportingStation *KCOU = [VXReportingStation new];
	KCOU.stationIdentifier = @"KCOU";
	KCOU.associatedCity = @"COLUMBIA";
	KCOU.associatedState = @"MO";
	KCOU.latitude = 38.8181;
	KCOU.longitude = 92.2194;
	[stationList addObject:KCOU];

	VXReportingStation *KCPC = [VXReportingStation new];
	KCPC.stationIdentifier = @"KCPC";
	KCPC.associatedCity = @"WHITEVILLE";
	KCPC.associatedState = @"NC";
	KCPC.latitude = 34.2728;
	KCPC.longitude = 78.7147;
	[stationList addObject:KCPC];

	VXReportingStation *KCPK = [VXReportingStation new];
	KCPK.stationIdentifier = @"KCPK";
	KCPK.associatedCity = @"NORFOLK";
	KCPK.associatedState = @"VA";
	KCPK.latitude = 36.6656;
	KCPK.longitude = 76.3206;
	[stationList addObject:KCPK];

	VXReportingStation *KCPR = [VXReportingStation new];
	KCPR.stationIdentifier = @"KCPR";
	KCPR.associatedCity = @"CASPER";
	KCPR.associatedState = @"WY";
	KCPR.latitude = 42.9078;
	KCPR.longitude = 106.464;
	[stationList addObject:KCPR];

	VXReportingStation *KCPS = [VXReportingStation new];
	KCPS.stationIdentifier = @"KCPS";
	KCPS.associatedCity = @"CAHOKIA/ST LOUIS";
	KCPS.associatedState = @"IL";
	KCPS.latitude = 38.5706;
	KCPS.longitude = 90.1561;
	[stationList addObject:KCPS];

	VXReportingStation *KCPT = [VXReportingStation new];
	KCPT.stationIdentifier = @"KCPT";
	KCPT.associatedCity = @"CLEBURNE";
	KCPT.associatedState = @"TX";
	KCPT.latitude = 32.3536;
	KCPT.longitude = 97.4336;
	[stationList addObject:KCPT];

	VXReportingStation *KCPW = [VXReportingStation new];
	KCPW.stationIdentifier = @"KCPW";
	KCPW.associatedCity = @"WOLF CREEK PASS";
	KCPW.associatedState = @"CO";
	KCPW.latitude = 37.4644;
	KCPW.longitude = 106.804;
	[stationList addObject:KCPW];

	VXReportingStation *KCQB = [VXReportingStation new];
	KCQB.stationIdentifier = @"KCQB";
	KCQB.associatedCity = @"CHANDLER";
	KCQB.associatedState = @"OK";
	KCQB.latitude = 35.7236;
	KCQB.longitude = 96.82;
	[stationList addObject:KCQB];

	VXReportingStation *KCQF = [VXReportingStation new];
	KCQF.stationIdentifier = @"KCQF";
	KCQF.associatedCity = @"FAIRHOPE";
	KCQF.associatedState = @"AL";
	KCQF.latitude = 30.4603;
	KCQF.longitude = 87.8769;
	[stationList addObject:KCQF];

	VXReportingStation *KCQM = [VXReportingStation new];
	KCQM.stationIdentifier = @"KCQM";
	KCQM.associatedCity = @"COOK";
	KCQM.associatedState = @"MN";
	KCQM.latitude = 47.8217;
	KCQM.longitude = 92.6892;
	[stationList addObject:KCQM];

	VXReportingStation *KCQV = [VXReportingStation new];
	KCQV.stationIdentifier = @"KCQV";
	KCQV.associatedCity = @"COLVILLE";
	KCQV.associatedState = @"WA";
	KCQV.latitude = 48.5914;
	KCQV.longitude = 117.801;
	[stationList addObject:KCQV];

	VXReportingStation *KCQW = [VXReportingStation new];
	KCQW.stationIdentifier = @"KCQW";
	KCQW.associatedCity = @"CHERAW";
	KCQW.associatedState = @"SC";
	KCQW.latitude = 34.7128;
	KCQW.longitude = 79.9622;
	[stationList addObject:KCQW];

	VXReportingStation *KCQX = [VXReportingStation new];
	KCQX.stationIdentifier = @"KCQX";
	KCQX.associatedCity = @"CHATHAM";
	KCQX.associatedState = @"MA";
	KCQX.latitude = 41.6883;
	KCQX.longitude = 69.9894;
	[stationList addObject:KCQX];

	VXReportingStation *KCRE = [VXReportingStation new];
	KCRE.stationIdentifier = @"KCRE";
	KCRE.associatedCity = @"NORTH MYRTLE BEACH";
	KCRE.associatedState = @"SC";
	KCRE.latitude = 33.8117;
	KCRE.longitude = 78.7239;
	[stationList addObject:KCRE];

	VXReportingStation *KCRG = [VXReportingStation new];
	KCRG.stationIdentifier = @"KCRG";
	KCRG.associatedCity = @"JACKSONVILLE";
	KCRG.associatedState = @"FL";
	KCRG.latitude = 30.3361;
	KCRG.longitude = 81.5144;
	[stationList addObject:KCRG];

	VXReportingStation *KCRH = [VXReportingStation new];
	KCRH.stationIdentifier = @"KCRH";
	KCRH.associatedCity = @"WEST CAMERON";
	KCRH.associatedState = @"TX";
	KCRH.latitude = 28.9086;
	KCRH.longitude = 93.3017;
	[stationList addObject:KCRH];

	VXReportingStation *KCRP = [VXReportingStation new];
	KCRP.stationIdentifier = @"KCRP";
	KCRP.associatedCity = @"CORPUS CHRISTI";
	KCRP.associatedState = @"TX";
	KCRP.latitude = 27.7703;
	KCRP.longitude = 97.5011;
	[stationList addObject:KCRP];

	VXReportingStation *KCRQ = [VXReportingStation new];
	KCRQ.stationIdentifier = @"KCRQ";
	KCRQ.associatedCity = @"CARLSBAD";
	KCRQ.associatedState = @"CA";
	KCRQ.latitude = 33.1297;
	KCRQ.longitude = 117.276;
	[stationList addObject:KCRQ];

	VXReportingStation *KCRS = [VXReportingStation new];
	KCRS.stationIdentifier = @"KCRS";
	KCRS.associatedCity = @"CORSICANA";
	KCRS.associatedState = @"TX";
	KCRS.latitude = 32.0281;
	KCRS.longitude = 96.4006;
	[stationList addObject:KCRS];

	VXReportingStation *KCRW = [VXReportingStation new];
	KCRW.stationIdentifier = @"KCRW";
	KCRW.associatedCity = @"CHARLESTON";
	KCRW.associatedState = @"WV";
	KCRW.latitude = 38.3731;
	KCRW.longitude = 81.5931;
	[stationList addObject:KCRW];

	VXReportingStation *KCRX = [VXReportingStation new];
	KCRX.stationIdentifier = @"KCRX";
	KCRX.associatedCity = @"CORINTH";
	KCRX.associatedState = @"MS";
	KCRX.latitude = 34.9147;
	KCRX.longitude = 88.6033;
	[stationList addObject:KCRX];

	VXReportingStation *KCSG = [VXReportingStation new];
	KCSG.stationIdentifier = @"KCSG";
	KCSG.associatedCity = @"COLUMBUS";
	KCSG.associatedState = @"GA";
	KCSG.latitude = 32.5161;
	KCSG.longitude = 84.9386;
	[stationList addObject:KCSG];

	VXReportingStation *KCSM = [VXReportingStation new];
	KCSM.stationIdentifier = @"KCSM";
	KCSM.associatedCity = @"CLINTON";
	KCSM.associatedState = @"OK";
	KCSM.latitude = 35.3397;
	KCSM.longitude = 99.2003;
	[stationList addObject:KCSM];

	VXReportingStation *KCSQ = [VXReportingStation new];
	KCSQ.stationIdentifier = @"KCSQ";
	KCSQ.associatedCity = @"CRESTON";
	KCSQ.associatedState = @"IA";
	KCSQ.latitude = 41.0214;
	KCSQ.longitude = 94.3631;
	[stationList addObject:KCSQ];

	VXReportingStation *KCSV = [VXReportingStation new];
	KCSV.stationIdentifier = @"KCSV";
	KCSV.associatedCity = @"CROSSVILLE";
	KCSV.associatedState = @"TN";
	KCSV.latitude = 35.9511;
	KCSV.longitude = 85.0847;
	[stationList addObject:KCSV];

	VXReportingStation *KCTB = [VXReportingStation new];
	KCTB.stationIdentifier = @"KCTB";
	KCTB.associatedCity = @"CUT BANK";
	KCTB.associatedState = @"MT";
	KCTB.latitude = 48.6083;
	KCTB.longitude = 112.376;
	[stationList addObject:KCTB];

	VXReportingStation *KCTJ = [VXReportingStation new];
	KCTJ.stationIdentifier = @"KCTJ";
	KCTJ.associatedCity = @"CARROLLTON";
	KCTJ.associatedState = @"GA";
	KCTJ.latitude = 33.6308;
	KCTJ.longitude = 85.1519;
	[stationList addObject:KCTJ];

	VXReportingStation *KCTZ = [VXReportingStation new];
	KCTZ.stationIdentifier = @"KCTZ";
	KCTZ.associatedCity = @"CLINTON";
	KCTZ.associatedState = @"NC";
	KCTZ.latitude = 34.9756;
	KCTZ.longitude = 78.3644;
	[stationList addObject:KCTZ];

	VXReportingStation *KCUB = [VXReportingStation new];
	KCUB.stationIdentifier = @"KCUB";
	KCUB.associatedCity = @"COLUMBIA";
	KCUB.associatedState = @"SC";
	KCUB.latitude = 33.9703;
	KCUB.longitude = 80.995;
	[stationList addObject:KCUB];

	VXReportingStation *KCUH = [VXReportingStation new];
	KCUH.stationIdentifier = @"KCUH";
	KCUH.associatedCity = @"CUSHING";
	KCUH.associatedState = @"OK";
	KCUH.latitude = 35.9497;
	KCUH.longitude = 96.7728;
	[stationList addObject:KCUH];

	VXReportingStation *KCUL = [VXReportingStation new];
	KCUL.stationIdentifier = @"KCUL";
	KCUL.associatedCity = @"CARMI";
	KCUL.associatedState = @"IL";
	KCUL.latitude = 38.0894;
	KCUL.longitude = 88.1231;
	[stationList addObject:KCUL];

	VXReportingStation *KCUT = [VXReportingStation new];
	KCUT.stationIdentifier = @"KCUT";
	KCUT.associatedCity = @"CUSTER";
	KCUT.associatedState = @"SD";
	KCUT.latitude = 43.7331;
	KCUT.longitude = 103.617;
	[stationList addObject:KCUT];

	VXReportingStation *KCVB = [VXReportingStation new];
	KCVB.stationIdentifier = @"KCVB";
	KCVB.associatedCity = @"CASTROVILLE";
	KCVB.associatedState = @"TX";
	KCVB.latitude = 29.3428;
	KCVB.longitude = 98.8494;
	[stationList addObject:KCVB];

	VXReportingStation *KCVC = [VXReportingStation new];
	KCVC.stationIdentifier = @"KCVC";
	KCVC.associatedCity = @"ATLANTA";
	KCVC.associatedState = @"GA";
	KCVC.latitude = 33.6325;
	KCVC.longitude = 83.8494;
	[stationList addObject:KCVC];

	VXReportingStation *KCVG = [VXReportingStation new];
	KCVG.stationIdentifier = @"KCVG";
	KCVG.associatedCity = @"COVINGTON";
	KCVG.associatedState = @"KY";
	KCVG.latitude = 39.0461;
	KCVG.longitude = 84.6619;
	[stationList addObject:KCVG];

	VXReportingStation *KCVH = [VXReportingStation new];
	KCVH.stationIdentifier = @"KCVH";
	KCVH.associatedCity = @"HOLLISTER";
	KCVH.associatedState = @"CA";
	KCVH.latitude = 36.8917;
	KCVH.longitude = 121.411;
	[stationList addObject:KCVH];

	VXReportingStation *KCVN = [VXReportingStation new];
	KCVN.stationIdentifier = @"KCVN";
	KCVN.associatedCity = @"CLOVIS";
	KCVN.associatedState = @"NM";
	KCVN.latitude = 34.425;
	KCVN.longitude = 103.079;
	[stationList addObject:KCVN];

	VXReportingStation *KCVO = [VXReportingStation new];
	KCVO.stationIdentifier = @"KCVO";
	KCVO.associatedCity = @"CORVALLIS";
	KCVO.associatedState = @"OR";
	KCVO.latitude = 44.4969;
	KCVO.longitude = 123.29;
	[stationList addObject:KCVO];

	VXReportingStation *KCVS = [VXReportingStation new];
	KCVS.stationIdentifier = @"KCVS";
	KCVS.associatedCity = @"CLOVIS";
	KCVS.associatedState = @"NM";
	KCVS.latitude = 34.3828;
	KCVS.longitude = 103.322;
	[stationList addObject:KCVS];

	VXReportingStation *KCVW = [VXReportingStation new];
	KCVW.stationIdentifier = @"KCVW";
	KCVW.associatedCity = @"CAMERON";
	KCVW.associatedState = @"LA";
	KCVW.latitude = 29.7833;
	KCVW.longitude = 93.3;
	[stationList addObject:KCVW];

	VXReportingStation *KCVX = [VXReportingStation new];
	KCVX.stationIdentifier = @"KCVX";
	KCVX.associatedCity = @"CHARLEVOIX";
	KCVX.associatedState = @"MI";
	KCVX.latitude = 45.3047;
	KCVX.longitude = 85.2753;
	[stationList addObject:KCVX];

	VXReportingStation *KCWA = [VXReportingStation new];
	KCWA.stationIdentifier = @"KCWA";
	KCWA.associatedCity = @"MOSINEE";
	KCWA.associatedState = @"WI";
	KCWA.latitude = 44.7775;
	KCWA.longitude = 89.6667;
	[stationList addObject:KCWA];

	VXReportingStation *KCWC = [VXReportingStation new];
	KCWC.stationIdentifier = @"KCWC";
	KCWC.associatedCity = @"WICHITA FALLS";
	KCWC.associatedState = @"TX";
	KCWC.latitude = 33.8606;
	KCWC.longitude = 98.4903;
	[stationList addObject:KCWC];

	VXReportingStation *KCWF = [VXReportingStation new];
	KCWF.stationIdentifier = @"KCWF";
	KCWF.associatedCity = @"LAKE CHARLES";
	KCWF.associatedState = @"LA";
	KCWF.latitude = 30.2106;
	KCWF.longitude = 93.1431;
	[stationList addObject:KCWF];

	VXReportingStation *KCWI = [VXReportingStation new];
	KCWI.stationIdentifier = @"KCWI";
	KCWI.associatedCity = @"CLINTON";
	KCWI.associatedState = @"IA";
	KCWI.latitude = 41.8311;
	KCWI.longitude = 90.3289;
	[stationList addObject:KCWI];

	VXReportingStation *KCWN = [VXReportingStation new];
	KCWN.stationIdentifier = @"KCWN";
	KCWN.associatedCity = @"COLORADO SPRINGS";
	KCWN.associatedState = @"CO";
	KCWN.latitude = 38.7406;
	KCWN.longitude = 104.842;
	[stationList addObject:KCWN];

	VXReportingStation *KCWV = [VXReportingStation new];
	KCWV.stationIdentifier = @"KCWV";
	KCWV.associatedCity = @"CLAXTON";
	KCWV.associatedState = @"GA";
	KCWV.latitude = 32.195;
	KCWV.longitude = 81.8694;
	[stationList addObject:KCWV];

	VXReportingStation *KCXE = [VXReportingStation new];
	KCXE.stationIdentifier = @"KCXE";
	KCXE.associatedCity = @"CHASE CITY";
	KCXE.associatedState = @"VA";
	KCXE.latitude = 36.7883;
	KCXE.longitude = 78.5014;
	[stationList addObject:KCXE];

	VXReportingStation *KCXO = [VXReportingStation new];
	KCXO.stationIdentifier = @"KCXO";
	KCXO.associatedCity = @"HOUSTON";
	KCXO.associatedState = @"TX";
	KCXO.latitude = 30.3517;
	KCXO.longitude = 95.4144;
	[stationList addObject:KCXO];

	VXReportingStation *KCXP = [VXReportingStation new];
	KCXP.stationIdentifier = @"KCXP";
	KCXP.associatedCity = @"CARSON CITY";
	KCXP.associatedState = @"NV";
	KCXP.latitude = 39.1922;
	KCXP.longitude = 119.734;
	[stationList addObject:KCXP];

	VXReportingStation *KCXU = [VXReportingStation new];
	KCXU.stationIdentifier = @"KCXU";
	KCXU.associatedCity = @"CAMILLA";
	KCXU.associatedState = @"GA";
	KCXU.latitude = 31.2131;
	KCXU.longitude = 84.235;
	[stationList addObject:KCXU];

	VXReportingStation *KCXY = [VXReportingStation new];
	KCXY.stationIdentifier = @"KCXY";
	KCXY.associatedCity = @"HARRISBURG";
	KCXY.associatedState = @"PA";
	KCXY.latitude = 40.2169;
	KCXY.longitude = 76.8514;
	[stationList addObject:KCXY];

	VXReportingStation *KCYS = [VXReportingStation new];
	KCYS.stationIdentifier = @"KCYS";
	KCYS.associatedCity = @"CHEYENNE";
	KCYS.associatedState = @"WY";
	KCYS.latitude = 41.1556;
	KCYS.longitude = 104.812;
	[stationList addObject:KCYS];

	VXReportingStation *KCZG = [VXReportingStation new];
	KCZG.stationIdentifier = @"KCZG";
	KCZG.associatedCity = @"ENDICOTT";
	KCZG.associatedState = @"NY";
	KCZG.latitude = 42.0783;
	KCZG.longitude = 76.0961;
	[stationList addObject:KCZG];

	VXReportingStation *KCZK = [VXReportingStation new];
	KCZK.stationIdentifier = @"KCZK";
	KCZK.associatedCity = @"CASCADE LOCKS";
	KCZK.associatedState = @"OR";
	KCZK.latitude = 45.6769;
	KCZK.longitude = 121.879;
	[stationList addObject:KCZK];

	VXReportingStation *KCZL = [VXReportingStation new];
	KCZL.stationIdentifier = @"KCZL";
	KCZL.associatedCity = @"CALHOUN";
	KCZL.associatedState = @"GA";
	KCZL.latitude = 34.455;
	KCZL.longitude = 84.9364;
	[stationList addObject:KCZL];

	VXReportingStation *KCZT = [VXReportingStation new];
	KCZT.stationIdentifier = @"KCZT";
	KCZT.associatedCity = @"CARRIZO SPRINGS";
	KCZT.associatedState = @"TX";
	KCZT.latitude = 28.5206;
	KCZT.longitude = 99.8194;
	[stationList addObject:KCZT];

	VXReportingStation *KCZZ = [VXReportingStation new];
	KCZZ.stationIdentifier = @"KCZZ";
	KCZZ.associatedCity = @"CAMPO";
	KCZZ.associatedState = @"CA";
	KCZZ.latitude = 32.6167;
	KCZZ.longitude = 116.468;
	[stationList addObject:KCZZ];

	VXReportingStation *KD25 = [VXReportingStation new];
	KD25.stationIdentifier = @"KD25";
	KD25.associatedCity = @"MANITOWISH WATERS";
	KD25.associatedState = @"WI";
	KD25.latitude = 46.12;
	KD25.longitude = 89.8819;
	[stationList addObject:KD25];

	VXReportingStation *KD39 = [VXReportingStation new];
	KD39.stationIdentifier = @"KD39";
	KD39.associatedCity = @"SAUK CENTRE";
	KD39.associatedState = @"MN";
	KD39.latitude = 45.7056;
	KD39.longitude = 94.9306;
	[stationList addObject:KD39];

	VXReportingStation *KD95 = [VXReportingStation new];
	KD95.stationIdentifier = @"KD95";
	KD95.associatedCity = @"LAPEER";
	KD95.associatedState = @"MI";
	KD95.latitude = 43.0664;
	KD95.longitude = 83.2714;
	[stationList addObject:KD95];

	VXReportingStation *KDAA = [VXReportingStation new];
	KDAA.stationIdentifier = @"KDAA";
	KDAA.associatedCity = @"FORT BELVOIR";
	KDAA.associatedState = @"VA";
	KDAA.latitude = 38.715;
	KDAA.longitude = 77.1808;
	[stationList addObject:KDAA];

	VXReportingStation *KDAB = [VXReportingStation new];
	KDAB.stationIdentifier = @"KDAB";
	KDAB.associatedCity = @"DAYTONA BEACH";
	KDAB.associatedState = @"FL";
	KDAB.latitude = 29.1797;
	KDAB.longitude = 81.0581;
	[stationList addObject:KDAB];

	VXReportingStation *KDAG = [VXReportingStation new];
	KDAG.stationIdentifier = @"KDAG";
	KDAG.associatedCity = @"DAGGETT";
	KDAG.associatedState = @"CA";
	KDAG.latitude = 34.8536;
	KDAG.longitude = 116.787;
	[stationList addObject:KDAG];

	VXReportingStation *KDAL = [VXReportingStation new];
	KDAL.stationIdentifier = @"KDAL";
	KDAL.associatedCity = @"DALLAS";
	KDAL.associatedState = @"TX";
	KDAL.latitude = 32.8469;
	KDAL.longitude = 96.8517;
	[stationList addObject:KDAL];

	VXReportingStation *KDAN = [VXReportingStation new];
	KDAN.stationIdentifier = @"KDAN";
	KDAN.associatedCity = @"DANVILLE";
	KDAN.associatedState = @"VA";
	KDAN.latitude = 36.5728;
	KDAN.longitude = 79.3361;
	[stationList addObject:KDAN];

	VXReportingStation *KDAW = [VXReportingStation new];
	KDAW.stationIdentifier = @"KDAW";
	KDAW.associatedCity = @"ROCHESTER";
	KDAW.associatedState = @"NH";
	KDAW.latitude = 43.2839;
	KDAW.longitude = 70.9292;
	[stationList addObject:KDAW];

	VXReportingStation *KDAY = [VXReportingStation new];
	KDAY.stationIdentifier = @"KDAY";
	KDAY.associatedCity = @"DAYTON";
	KDAY.associatedState = @"OH";
	KDAY.latitude = 39.9022;
	KDAY.longitude = 84.2192;
	[stationList addObject:KDAY];

	VXReportingStation *KDBN = [VXReportingStation new];
	KDBN.stationIdentifier = @"KDBN";
	KDBN.associatedCity = @"DUBLIN";
	KDBN.associatedState = @"GA";
	KDBN.latitude = 32.5644;
	KDBN.longitude = 82.985;
	[stationList addObject:KDBN];

	VXReportingStation *KDBQ = [VXReportingStation new];
	KDBQ.stationIdentifier = @"KDBQ";
	KDBQ.associatedCity = @"DUBUQUE";
	KDBQ.associatedState = @"IA";
	KDBQ.latitude = 42.4019;
	KDBQ.longitude = 90.7094;
	[stationList addObject:KDBQ];

	VXReportingStation *KDCA = [VXReportingStation new];
	KDCA.stationIdentifier = @"KDCA";
	KDCA.associatedCity = @"WASHINGTON";
	KDCA.associatedState = @"DC";
	KDCA.latitude = 38.8519;
	KDCA.longitude = 77.0375;
	[stationList addObject:KDCA];

	VXReportingStation *KDCM = [VXReportingStation new];
	KDCM.stationIdentifier = @"KDCM";
	KDCM.associatedCity = @"CHESTER";
	KDCM.associatedState = @"SC";
	KDCM.latitude = 34.7892;
	KDCM.longitude = 81.1956;
	[stationList addObject:KDCM];

	VXReportingStation *KDCU = [VXReportingStation new];
	KDCU.stationIdentifier = @"KDCU";
	KDCU.associatedCity = @"DECATUR";
	KDCU.associatedState = @"AL";
	KDCU.latitude = 34.6525;
	KDCU.longitude = 86.9453;
	[stationList addObject:KDCU];

	VXReportingStation *KDCY = [VXReportingStation new];
	KDCY.stationIdentifier = @"KDCY";
	KDCY.associatedCity = @"WASHINGTON";
	KDCY.associatedState = @"IN";
	KDCY.latitude = 38.695;
	KDCY.longitude = 87.1331;
	[stationList addObject:KDCY];

	VXReportingStation *KDDC = [VXReportingStation new];
	KDDC.stationIdentifier = @"KDDC";
	KDDC.associatedCity = @"DODGE CITY";
	KDDC.associatedState = @"KS";
	KDDC.latitude = 37.7644;
	KDDC.longitude = 99.9667;
	[stationList addObject:KDDC];

	VXReportingStation *KDDH = [VXReportingStation new];
	KDDH.stationIdentifier = @"KDDH";
	KDDH.associatedCity = @"BENNINGTON";
	KDDH.associatedState = @"VT";
	KDDH.latitude = 42.8911;
	KDDH.longitude = 73.2464;
	[stationList addObject:KDDH];

	VXReportingStation *KDEC = [VXReportingStation new];
	KDEC.stationIdentifier = @"KDEC";
	KDEC.associatedCity = @"DECATUR";
	KDEC.associatedState = @"IL";
	KDEC.latitude = 39.8344;
	KDEC.longitude = 88.8656;
	[stationList addObject:KDEC];

	VXReportingStation *KDED = [VXReportingStation new];
	KDED.stationIdentifier = @"KDED";
	KDED.associatedCity = @"DELAND";
	KDED.associatedState = @"FL";
	KDED.latitude = 29.0669;
	KDED.longitude = 81.2839;
	[stationList addObject:KDED];

	VXReportingStation *KDEH = [VXReportingStation new];
	KDEH.stationIdentifier = @"KDEH";
	KDEH.associatedCity = @"DECORAH";
	KDEH.associatedState = @"IA";
	KDEH.latitude = 43.2753;
	KDEH.longitude = 91.7392;
	[stationList addObject:KDEH];

	VXReportingStation *KDEN = [VXReportingStation new];
	KDEN.stationIdentifier = @"KDEN";
	KDEN.associatedCity = @"DENVER";
	KDEN.associatedState = @"CO";
	KDEN.latitude = 39.8614;
	KDEN.longitude = 104.673;
	[stationList addObject:KDEN];

	VXReportingStation *KDEQ = [VXReportingStation new];
	KDEQ.stationIdentifier = @"KDEQ";
	KDEQ.associatedCity = @"DE QUEEN";
	KDEQ.associatedState = @"AR";
	KDEQ.latitude = 34.0469;
	KDEQ.longitude = 94.3992;
	[stationList addObject:KDEQ];

	VXReportingStation *KDET = [VXReportingStation new];
	KDET.stationIdentifier = @"KDET";
	KDET.associatedCity = @"DETROIT";
	KDET.associatedState = @"MI";
	KDET.latitude = 42.4092;
	KDET.longitude = 83.0097;
	[stationList addObject:KDET];

	VXReportingStation *KDEW = [VXReportingStation new];
	KDEW.stationIdentifier = @"KDEW";
	KDEW.associatedCity = @"DEER PARK";
	KDEW.associatedState = @"WA";
	KDEW.latitude = 47.9689;
	KDEW.longitude = 117.421;
	[stationList addObject:KDEW];

	VXReportingStation *KDFI = [VXReportingStation new];
	KDFI.stationIdentifier = @"KDFI";
	KDFI.associatedCity = @"DEFIANCE";
	KDFI.associatedState = @"OH";
	KDFI.latitude = 41.3375;
	KDFI.longitude = 84.4289;
	[stationList addObject:KDFI];

	VXReportingStation *KDFW = [VXReportingStation new];
	KDFW.stationIdentifier = @"KDFW";
	KDFW.associatedCity = @"DALLAS-FORT WORTH";
	KDFW.associatedState = @"TX";
	KDFW.latitude = 32.8967;
	KDFW.longitude = 97.0378;
	[stationList addObject:KDFW];

	VXReportingStation *KDGW = [VXReportingStation new];
	KDGW.stationIdentifier = @"KDGW";
	KDGW.associatedCity = @"DOUGLAS";
	KDGW.associatedState = @"WY";
	KDGW.latitude = 42.7969;
	KDGW.longitude = 105.386;
	[stationList addObject:KDGW];

	VXReportingStation *KDHN = [VXReportingStation new];
	KDHN.stationIdentifier = @"KDHN";
	KDHN.associatedCity = @"DOTHAN";
	KDHN.associatedState = @"AL";
	KDHN.latitude = 31.3211;
	KDHN.longitude = 85.4494;
	[stationList addObject:KDHN];

	VXReportingStation *KDHT = [VXReportingStation new];
	KDHT.stationIdentifier = @"KDHT";
	KDHT.associatedCity = @"DALHART";
	KDHT.associatedState = @"TX";
	KDHT.latitude = 36.0225;
	KDHT.longitude = 102.547;
	[stationList addObject:KDHT];

	VXReportingStation *KDIJ = [VXReportingStation new];
	KDIJ.stationIdentifier = @"KDIJ";
	KDIJ.associatedCity = @"DRIGGS";
	KDIJ.associatedState = @"ID";
	KDIJ.latitude = 43.7417;
	KDIJ.longitude = 111.098;
	[stationList addObject:KDIJ];

	VXReportingStation *KDIK = [VXReportingStation new];
	KDIK.stationIdentifier = @"KDIK";
	KDIK.associatedCity = @"DICKINSON";
	KDIK.associatedState = @"ND";
	KDIK.latitude = 46.7972;
	KDIK.longitude = 102.802;
	[stationList addObject:KDIK];

	VXReportingStation *KDKB = [VXReportingStation new];
	KDKB.stationIdentifier = @"KDKB";
	KDKB.associatedCity = @"DE KALB";
	KDKB.associatedState = @"IL";
	KDKB.latitude = 41.9336;
	KDKB.longitude = 88.7056;
	[stationList addObject:KDKB];

	VXReportingStation *KDKK = [VXReportingStation new];
	KDKK.stationIdentifier = @"KDKK";
	KDKK.associatedCity = @"DUNKIRK";
	KDKK.associatedState = @"NY";
	KDKK.latitude = 42.4933;
	KDKK.longitude = 79.2719;
	[stationList addObject:KDKK];

	VXReportingStation *KDKR = [VXReportingStation new];
	KDKR.stationIdentifier = @"KDKR";
	KDKR.associatedCity = @"CROCKETT";
	KDKR.associatedState = @"TX";
	KDKR.latitude = 31.3069;
	KDKR.longitude = 95.4036;
	[stationList addObject:KDKR];

	VXReportingStation *KDLF = [VXReportingStation new];
	KDLF.stationIdentifier = @"KDLF";
	KDLF.associatedCity = @"DEL RIO";
	KDLF.associatedState = @"TX";
	KDLF.latitude = 29.3594;
	KDLF.longitude = 100.778;
	[stationList addObject:KDLF];

	VXReportingStation *KDLH = [VXReportingStation new];
	KDLH.stationIdentifier = @"KDLH";
	KDLH.associatedCity = @"DULUTH";
	KDLH.associatedState = @"MN";
	KDLH.latitude = 46.8419;
	KDLH.longitude = 92.1936;
	[stationList addObject:KDLH];

	VXReportingStation *KDLL = [VXReportingStation new];
	KDLL.stationIdentifier = @"KDLL";
	KDLL.associatedCity = @"BARABOO";
	KDLL.associatedState = @"WI";
	KDLL.latitude = 43.5219;
	KDLL.longitude = 89.7708;
	[stationList addObject:KDLL];

	VXReportingStation *KDLN = [VXReportingStation new];
	KDLN.stationIdentifier = @"KDLN";
	KDLN.associatedCity = @"DILLON";
	KDLN.associatedState = @"MT";
	KDLN.latitude = 45.2553;
	KDLN.longitude = 112.552;
	[stationList addObject:KDLN];

	VXReportingStation *KDLP = [VXReportingStation new];
	KDLP.stationIdentifier = @"KDLP";
	KDLP.associatedCity = @"WEST DELTA";
	KDLP.associatedState = @"MS";
	KDLP.latitude = 29.1214;
	KDLP.longitude = 89.5472;
	[stationList addObject:KDLP];

	VXReportingStation *KDLS = [VXReportingStation new];
	KDLS.stationIdentifier = @"KDLS";
	KDLS.associatedCity = @"THE DALLES";
	KDLS.associatedState = @"OR";
	KDLS.latitude = 45.6183;
	KDLS.longitude = 121.167;
	[stationList addObject:KDLS];

	VXReportingStation *KDLZ = [VXReportingStation new];
	KDLZ.stationIdentifier = @"KDLZ";
	KDLZ.associatedCity = @"DELAWARE";
	KDLZ.associatedState = @"OH";
	KDLZ.latitude = 40.2794;
	KDLZ.longitude = 83.1147;
	[stationList addObject:KDLZ];

	VXReportingStation *KDMA = [VXReportingStation new];
	KDMA.stationIdentifier = @"KDMA";
	KDMA.associatedCity = @"TUCSON";
	KDMA.associatedState = @"AZ";
	KDMA.latitude = 32.1664;
	KDMA.longitude = 110.883;
	[stationList addObject:KDMA];

	VXReportingStation *KDMN = [VXReportingStation new];
	KDMN.stationIdentifier = @"KDMN";
	KDMN.associatedCity = @"DEMING";
	KDMN.associatedState = @"NM";
	KDMN.latitude = 32.2622;
	KDMN.longitude = 107.721;
	[stationList addObject:KDMN];

	VXReportingStation *KDMO = [VXReportingStation new];
	KDMO.stationIdentifier = @"KDMO";
	KDMO.associatedCity = @"SEDALIA";
	KDMO.associatedState = @"MO";
	KDMO.latitude = 38.7067;
	KDMO.longitude = 93.1761;
	[stationList addObject:KDMO];

	VXReportingStation *KDMW = [VXReportingStation new];
	KDMW.stationIdentifier = @"KDMW";
	KDMW.associatedCity = @"WESTMINSTER";
	KDMW.associatedState = @"MD";
	KDMW.latitude = 39.6081;
	KDMW.longitude = 77.0075;
	[stationList addObject:KDMW];

	VXReportingStation *KDNL = [VXReportingStation new];
	KDNL.stationIdentifier = @"KDNL";
	KDNL.associatedCity = @"AUGUSTA";
	KDNL.associatedState = @"GA";
	KDNL.latitude = 33.4664;
	KDNL.longitude = 82.0392;
	[stationList addObject:KDNL];

	VXReportingStation *KDNN = [VXReportingStation new];
	KDNN.stationIdentifier = @"KDNN";
	KDNN.associatedCity = @"DALTON";
	KDNN.associatedState = @"GA";
	KDNN.latitude = 34.7222;
	KDNN.longitude = 84.8717;
	[stationList addObject:KDNN];

	VXReportingStation *KDNS = [VXReportingStation new];
	KDNS.stationIdentifier = @"KDNS";
	KDNS.associatedCity = @"DENISON";
	KDNS.associatedState = @"IA";
	KDNS.latitude = 41.9864;
	KDNS.longitude = 95.3806;
	[stationList addObject:KDNS];

	VXReportingStation *KDNV = [VXReportingStation new];
	KDNV.stationIdentifier = @"KDNV";
	KDNV.associatedCity = @"DANVILLE";
	KDNV.associatedState = @"IL";
	KDNV.latitude = 40.1994;
	KDNV.longitude = 87.5953;
	[stationList addObject:KDNV];

	VXReportingStation *KDOV = [VXReportingStation new];
	KDOV.stationIdentifier = @"KDOV";
	KDOV.associatedCity = @"DOVER";
	KDOV.associatedState = @"DE";
	KDOV.latitude = 39.1294;
	KDOV.longitude = 75.4658;
	[stationList addObject:KDOV];

	VXReportingStation *KDPA = [VXReportingStation new];
	KDPA.stationIdentifier = @"KDPA";
	KDPA.associatedCity = @"CHICAGO/WEST CHICAGO";
	KDPA.associatedState = @"IL";
	KDPA.latitude = 41.9078;
	KDPA.longitude = 88.2486;
	[stationList addObject:KDPA];

	VXReportingStation *KDPG = [VXReportingStation new];
	KDPG.stationIdentifier = @"KDPG";
	KDPG.associatedCity = @"DUGWAY PROVING GROUND";
	KDPG.associatedState = @"UT";
	KDPG.latitude = 40.1992;
	KDPG.longitude = 112.937;
	[stationList addObject:KDPG];

	VXReportingStation *KDPL = [VXReportingStation new];
	KDPL.stationIdentifier = @"KDPL";
	KDPL.associatedCity = @"KENANSVILLE";
	KDPL.associatedState = @"NC";
	KDPL.latitude = 35;
	KDPL.longitude = 77.9817;
	[stationList addObject:KDPL];

	VXReportingStation *KDQH = [VXReportingStation new];
	KDQH.stationIdentifier = @"KDQH";
	KDQH.associatedCity = @"DOUGLAS";
	KDQH.associatedState = @"GA";
	KDQH.latitude = 31.4767;
	KDQH.longitude = 82.8603;
	[stationList addObject:KDQH];

	VXReportingStation *KDRA = [VXReportingStation new];
	KDRA.stationIdentifier = @"KDRA";
	KDRA.associatedCity = @"MERCURY";
	KDRA.associatedState = @"NV";
	KDRA.latitude = 36.6192;
	KDRA.longitude = 116.033;
	[stationList addObject:KDRA];

	VXReportingStation *KDRI = [VXReportingStation new];
	KDRI.stationIdentifier = @"KDRI";
	KDRI.associatedCity = @"DE RIDDER";
	KDRI.associatedState = @"LA";
	KDRI.latitude = 30.8317;
	KDRI.longitude = 93.3397;
	[stationList addObject:KDRI];

	VXReportingStation *KDRM = [VXReportingStation new];
	KDRM.stationIdentifier = @"KDRM";
	KDRM.associatedCity = @"DRUMMOND ISLAND";
	KDRM.associatedState = @"MI";
	KDRM.latitude = 46.0092;
	KDRM.longitude = 83.7439;
	[stationList addObject:KDRM];

	VXReportingStation *KDRO = [VXReportingStation new];
	KDRO.stationIdentifier = @"KDRO";
	KDRO.associatedCity = @"DURANGO";
	KDRO.associatedState = @"CO";
	KDRO.latitude = 37.1514;
	KDRO.longitude = 107.754;
	[stationList addObject:KDRO];

	VXReportingStation *KDRT = [VXReportingStation new];
	KDRT.stationIdentifier = @"KDRT";
	KDRT.associatedCity = @"DEL RIO";
	KDRT.associatedState = @"TX";
	KDRT.latitude = 29.3728;
	KDRT.longitude = 100.926;
	[stationList addObject:KDRT];

	VXReportingStation *KDSM = [VXReportingStation new];
	KDSM.stationIdentifier = @"KDSM";
	KDSM.associatedCity = @"DES MOINES";
	KDSM.associatedState = @"IA";
	KDSM.latitude = 41.5339;
	KDSM.longitude = 93.6631;
	[stationList addObject:KDSM];

	VXReportingStation *KDSV = [VXReportingStation new];
	KDSV.stationIdentifier = @"KDSV";
	KDSV.associatedCity = @"DANSVILLE";
	KDSV.associatedState = @"NY";
	KDSV.latitude = 42.5706;
	KDSV.longitude = 77.7128;
	[stationList addObject:KDSV];

	VXReportingStation *KDTA = [VXReportingStation new];
	KDTA.stationIdentifier = @"KDTA";
	KDTA.associatedCity = @"DELTA";
	KDTA.associatedState = @"UT";
	KDTA.latitude = 39.3833;
	KDTA.longitude = 112.51;
	[stationList addObject:KDTA];

	VXReportingStation *KDTL = [VXReportingStation new];
	KDTL.stationIdentifier = @"KDTL";
	KDTL.associatedCity = @"DETROIT LAKES";
	KDTL.associatedState = @"MN";
	KDTL.latitude = 46.825;
	KDTL.longitude = 95.8856;
	[stationList addObject:KDTL];

	VXReportingStation *KDTN = [VXReportingStation new];
	KDTN.stationIdentifier = @"KDTN";
	KDTN.associatedCity = @"SHREVEPORT";
	KDTN.associatedState = @"LA";
	KDTN.latitude = 32.54;
	KDTN.longitude = 93.745;
	[stationList addObject:KDTN];

	VXReportingStation *KDTO = [VXReportingStation new];
	KDTO.stationIdentifier = @"KDTO";
	KDTO.associatedCity = @"DENTON";
	KDTO.associatedState = @"TX";
	KDTO.latitude = 33.2006;
	KDTO.longitude = 97.1978;
	[stationList addObject:KDTO];

	VXReportingStation *KDTS = [VXReportingStation new];
	KDTS.stationIdentifier = @"KDTS";
	KDTS.associatedCity = @"DESTIN";
	KDTS.associatedState = @"FL";
	KDTS.latitude = 30.4;
	KDTS.longitude = 86.4714;
	[stationList addObject:KDTS];

	VXReportingStation *KDTW = [VXReportingStation new];
	KDTW.stationIdentifier = @"KDTW";
	KDTW.associatedCity = @"DETROIT";
	KDTW.associatedState = @"MI";
	KDTW.latitude = 42.2122;
	KDTW.longitude = 83.3533;
	[stationList addObject:KDTW];

	VXReportingStation *KDUA = [VXReportingStation new];
	KDUA.stationIdentifier = @"KDUA";
	KDUA.associatedCity = @"DURANT";
	KDUA.associatedState = @"OK";
	KDUA.latitude = 33.9422;
	KDUA.longitude = 96.3944;
	[stationList addObject:KDUA];

	VXReportingStation *KDUB = [VXReportingStation new];
	KDUB.stationIdentifier = @"KDUB";
	KDUB.associatedCity = @"DUBOIS";
	KDUB.associatedState = @"WY";
	KDUB.latitude = 43.5483;
	KDUB.longitude = 109.69;
	[stationList addObject:KDUB];

	VXReportingStation *KDUC = [VXReportingStation new];
	KDUC.stationIdentifier = @"KDUC";
	KDUC.associatedCity = @"DUNCAN";
	KDUC.associatedState = @"OK";
	KDUC.latitude = 34.4708;
	KDUC.longitude = 97.9597;
	[stationList addObject:KDUC];

	VXReportingStation *KDUG = [VXReportingStation new];
	KDUG.stationIdentifier = @"KDUG";
	KDUG.associatedCity = @"DOUGLAS BISBEE";
	KDUG.associatedState = @"AZ";
	KDUG.latitude = 31.4689;
	KDUG.longitude = 109.604;
	[stationList addObject:KDUG];

	VXReportingStation *KDUH = [VXReportingStation new];
	KDUH.stationIdentifier = @"KDUH";
	KDUH.associatedCity = @"LAMBERTVILLE";
	KDUH.associatedState = @"MI";
	KDUH.latitude = 42.5428;
	KDUH.longitude = 83.1778;
	[stationList addObject:KDUH];

	VXReportingStation *KDUJ = [VXReportingStation new];
	KDUJ.stationIdentifier = @"KDUJ";
	KDUJ.associatedCity = @"DUBOIS";
	KDUJ.associatedState = @"PA";
	KDUJ.latitude = 41.1781;
	KDUJ.longitude = 78.8986;
	[stationList addObject:KDUJ];

	VXReportingStation *KDUX = [VXReportingStation new];
	KDUX.stationIdentifier = @"KDUX";
	KDUX.associatedCity = @"DUMAS";
	KDUX.associatedState = @"TX";
	KDUX.latitude = 35.8578;
	KDUX.longitude = 102.013;
	[stationList addObject:KDUX];

	VXReportingStation *KDVL = [VXReportingStation new];
	KDVL.stationIdentifier = @"KDVL";
	KDVL.associatedCity = @"DEVILS LAKE";
	KDVL.associatedState = @"ND";
	KDVL.latitude = 48.1142;
	KDVL.longitude = 98.9086;
	[stationList addObject:KDVL];

	VXReportingStation *KDVN = [VXReportingStation new];
	KDVN.stationIdentifier = @"KDVN";
	KDVN.associatedCity = @"DAVENPORT";
	KDVN.associatedState = @"IA";
	KDVN.latitude = 41.61;
	KDVN.longitude = 90.5881;
	[stationList addObject:KDVN];

	VXReportingStation *KDVO = [VXReportingStation new];
	KDVO.stationIdentifier = @"KDVO";
	KDVO.associatedCity = @"NOVATO";
	KDVO.associatedState = @"CA";
	KDVO.latitude = 38.1436;
	KDVO.longitude = 122.556;
	[stationList addObject:KDVO];

	VXReportingStation *KDVP = [VXReportingStation new];
	KDVP.stationIdentifier = @"KDVP";
	KDVP.associatedCity = @"SLAYTON";
	KDVP.associatedState = @"MN";
	KDVP.latitude = 43.9867;
	KDVP.longitude = 95.7825;
	[stationList addObject:KDVP];

	VXReportingStation *KDVT = [VXReportingStation new];
	KDVT.stationIdentifier = @"KDVT";
	KDVT.associatedCity = @"PHOENIX";
	KDVT.associatedState = @"AZ";
	KDVT.latitude = 33.6881;
	KDVT.longitude = 112.082;
	[stationList addObject:KDVT];

	VXReportingStation *KDWH = [VXReportingStation new];
	KDWH.stationIdentifier = @"KDWH";
	KDWH.associatedCity = @"HOUSTON";
	KDWH.associatedState = @"TX";
	KDWH.latitude = 30.0617;
	KDWH.longitude = 95.5528;
	[stationList addObject:KDWH];

	VXReportingStation *KDWU = [VXReportingStation new];
	KDWU.stationIdentifier = @"KDWU";
	KDWU.associatedCity = @"ASHLAND";
	KDWU.associatedState = @"KY";
	KDWU.latitude = 38.5544;
	KDWU.longitude = 82.7378;
	[stationList addObject:KDWU];

	VXReportingStation *KDWX = [VXReportingStation new];
	KDWX.stationIdentifier = @"KDWX";
	KDWX.associatedCity = @"DIXON";
	KDWX.associatedState = @"WY";
	KDWX.latitude = 41.0369;
	KDWX.longitude = 107.5;
	[stationList addObject:KDWX];

	VXReportingStation *KDXR = [VXReportingStation new];
	KDXR.stationIdentifier = @"KDXR";
	KDXR.associatedCity = @"DANBURY";
	KDXR.associatedState = @"CT";
	KDXR.latitude = 41.3714;
	KDXR.longitude = 73.4819;
	[stationList addObject:KDXR];

	VXReportingStation *KDXX = [VXReportingStation new];
	KDXX.stationIdentifier = @"KDXX";
	KDXX.associatedCity = @"MADISON";
	KDXX.associatedState = @"MN";
	KDXX.latitude = 44.9861;
	KDXX.longitude = 96.1775;
	[stationList addObject:KDXX];

	VXReportingStation *KDYA = [VXReportingStation new];
	KDYA.stationIdentifier = @"KDYA";
	KDYA.associatedCity = @"DEMOPOLIS";
	KDYA.associatedState = @"AL";
	KDYA.latitude = 32.4639;
	KDYA.longitude = 87.9503;
	[stationList addObject:KDYA];

	VXReportingStation *KDYB = [VXReportingStation new];
	KDYB.stationIdentifier = @"KDYB";
	KDYB.associatedCity = @"SUMMERVILLE";
	KDYB.associatedState = @"SC";
	KDYB.latitude = 33.0633;
	KDYB.longitude = 80.2792;
	[stationList addObject:KDYB];

	VXReportingStation *KDYL = [VXReportingStation new];
	KDYL.stationIdentifier = @"KDYL";
	KDYL.associatedCity = @"DOYLESTOWN";
	KDYL.associatedState = @"PA";
	KDYL.latitude = 40.3328;
	KDYL.longitude = 75.1222;
	[stationList addObject:KDYL];

	VXReportingStation *KDYR = [VXReportingStation new];
	KDYR.stationIdentifier = @"KDYR";
	KDYR.associatedCity = @"DYERSBURG";
	KDYR.associatedState = @"TN";
	KDYR.latitude = 35.9978;
	KDYR.longitude = 89.4064;
	[stationList addObject:KDYR];

	VXReportingStation *KDYS = [VXReportingStation new];
	KDYS.stationIdentifier = @"KDYS";
	KDYS.associatedCity = @"ABILENE";
	KDYS.associatedState = @"TX";
	KDYS.latitude = 32.4208;
	KDYS.longitude = 99.8544;
	[stationList addObject:KDYS];

	VXReportingStation *KDYT = [VXReportingStation new];
	KDYT.stationIdentifier = @"KDYT";
	KDYT.associatedCity = @"DULUTH";
	KDYT.associatedState = @"MN";
	KDYT.latitude = 46.7217;
	KDYT.longitude = 92.0433;
	[stationList addObject:KDYT];

	VXReportingStation *KDZB = [VXReportingStation new];
	KDZB.stationIdentifier = @"KDZB";
	KDZB.associatedCity = @"HORSESHOE BAY";
	KDZB.associatedState = @"TX";
	KDZB.latitude = 30.5208;
	KDZB.longitude = 98.3572;
	[stationList addObject:KDZB];

	VXReportingStation *KDZJ = [VXReportingStation new];
	KDZJ.stationIdentifier = @"KDZJ";
	KDZJ.associatedCity = @"BLAIRSVILLE";
	KDZJ.associatedState = @"GA";
	KDZJ.latitude = 34.855;
	KDZJ.longitude = 84.0006;
	[stationList addObject:KDZJ];

	VXReportingStation *KE11 = [VXReportingStation new];
	KE11.stationIdentifier = @"KE11";
	KE11.associatedCity = @"ANDREWS";
	KE11.associatedState = @"TX";
	KE11.latitude = 32.3311;
	KE11.longitude = 102.529;
	[stationList addObject:KE11];

	VXReportingStation *KE12 = [VXReportingStation new];
	KE12.stationIdentifier = @"KE12";
	KE12.associatedCity = @"EAST CAMERON 345";
	KE12.associatedState = @"OG";
	KE12.latitude = 28.0833;
	KE12.longitude = 92.7;
	[stationList addObject:KE12];

	VXReportingStation *KE16 = [VXReportingStation new];
	KE16.stationIdentifier = @"KE16";
	KE16.associatedCity = @"SAN MARTIN";
	KE16.associatedState = @"CA";
	KE16.latitude = 37.0794;
	KE16.longitude = 121.598;
	[stationList addObject:KE16];

	VXReportingStation *KE33 = [VXReportingStation new];
	KE33.stationIdentifier = @"KE33";
	KE33.associatedCity = @"CHAMA";
	KE33.associatedState = @"NM";
	KE33.latitude = 36.8672;
	KE33.longitude = 106.569;
	[stationList addObject:KE33];

	VXReportingStation *KE38 = [VXReportingStation new];
	KE38.stationIdentifier = @"KE38";
	KE38.associatedCity = @"ALPINE";
	KE38.associatedState = @"TX";
	KE38.latitude = 30.3842;
	KE38.longitude = 103.683;
	[stationList addObject:KE38];

	VXReportingStation *KEAR = [VXReportingStation new];
	KEAR.stationIdentifier = @"KEAR";
	KEAR.associatedCity = @"KEARNEY";
	KEAR.associatedState = @"NE";
	KEAR.latitude = 40.7269;
	KEAR.longitude = 99.0067;
	[stationList addObject:KEAR];

	VXReportingStation *KEAT = [VXReportingStation new];
	KEAT.stationIdentifier = @"KEAT";
	KEAT.associatedCity = @"WENATCHEE";
	KEAT.associatedState = @"WA";
	KEAT.latitude = 47.3986;
	KEAT.longitude = 120.207;
	[stationList addObject:KEAT];

	VXReportingStation *KEAU = [VXReportingStation new];
	KEAU.stationIdentifier = @"KEAU";
	KEAU.associatedCity = @"EAU CLAIRE";
	KEAU.associatedState = @"WI";
	KEAU.latitude = 44.8656;
	KEAU.longitude = 91.4842;
	[stationList addObject:KEAU];

	VXReportingStation *KEBA = [VXReportingStation new];
	KEBA.stationIdentifier = @"KEBA";
	KEBA.associatedCity = @"ELBERTON";
	KEBA.associatedState = @"GA";
	KEBA.latitude = 34.0956;
	KEBA.longitude = 82.8119;
	[stationList addObject:KEBA];

	VXReportingStation *KEBG = [VXReportingStation new];
	KEBG.stationIdentifier = @"KEBG";
	KEBG.associatedCity = @"EDINBURG";
	KEBG.associatedState = @"TX";
	KEBG.latitude = 26.4417;
	KEBG.longitude = 98.1222;
	[stationList addObject:KEBG];

	VXReportingStation *KEBS = [VXReportingStation new];
	KEBS.stationIdentifier = @"KEBS";
	KEBS.associatedCity = @"WEBSTER CITY";
	KEBS.associatedState = @"IA";
	KEBS.latitude = 42.4364;
	KEBS.longitude = 93.8686;
	[stationList addObject:KEBS];

	VXReportingStation *KECG = [VXReportingStation new];
	KECG.stationIdentifier = @"KECG";
	KECG.associatedCity = @"ELIZABETH CITY";
	KECG.associatedState = @"NC";
	KECG.latitude = 36.2606;
	KECG.longitude = 76.1744;
	[stationList addObject:KECG];

	VXReportingStation *KECP = [VXReportingStation new];
	KECP.stationIdentifier = @"KECP";
	KECP.associatedCity = @"PANAMA CITY";
	KECP.associatedState = @"FL";
	KECP.latitude = 30.3486;
	KECP.longitude = 85.7883;
	[stationList addObject:KECP];

	VXReportingStation *KECU = [VXReportingStation new];
	KECU.stationIdentifier = @"KECU";
	KECU.associatedCity = @"ROCKSPRINGS";
	KECU.associatedState = @"TX";
	KECU.latitude = 29.9467;
	KECU.longitude = 100.174;
	[stationList addObject:KECU];

	VXReportingStation *KEDC = [VXReportingStation new];
	KEDC.stationIdentifier = @"KEDC";
	KEDC.associatedCity = @"AUSTIN";
	KEDC.associatedState = @"TX";
	KEDC.latitude = 30.3928;
	KEDC.longitude = 97.5619;
	[stationList addObject:KEDC];

	VXReportingStation *KEDE = [VXReportingStation new];
	KEDE.stationIdentifier = @"KEDE";
	KEDE.associatedCity = @"EDENTON";
	KEDE.associatedState = @"NC";
	KEDE.latitude = 36.0283;
	KEDE.longitude = 76.5697;
	[stationList addObject:KEDE];

	VXReportingStation *KEDJ = [VXReportingStation new];
	KEDJ.stationIdentifier = @"KEDJ";
	KEDJ.associatedCity = @"BELLEFONTAINE";
	KEDJ.associatedState = @"OH";
	KEDJ.latitude = 40.3722;
	KEDJ.longitude = 83.8189;
	[stationList addObject:KEDJ];

	VXReportingStation *KEDN = [VXReportingStation new];
	KEDN.stationIdentifier = @"KEDN";
	KEDN.associatedCity = @"ENTERPRISE";
	KEDN.associatedState = @"AL";
	KEDN.latitude = 31.2981;
	KEDN.longitude = 85.9047;
	[stationList addObject:KEDN];

	VXReportingStation *KEDU = [VXReportingStation new];
	KEDU.stationIdentifier = @"KEDU";
	KEDU.associatedCity = @"DAVIS";
	KEDU.associatedState = @"CA";
	KEDU.latitude = 38.5314;
	KEDU.longitude = 121.786;
	[stationList addObject:KEDU];

	VXReportingStation *KEDW = [VXReportingStation new];
	KEDW.stationIdentifier = @"KEDW";
	KEDW.associatedCity = @"EDWARDS";
	KEDW.associatedState = @"CA";
	KEDW.latitude = 34.9053;
	KEDW.longitude = 117.884;
	[stationList addObject:KEDW];

	VXReportingStation *KEED = [VXReportingStation new];
	KEED.stationIdentifier = @"KEED";
	KEED.associatedCity = @"NEEDLES";
	KEED.associatedState = @"CA";
	KEED.latitude = 34.7661;
	KEED.longitude = 114.623;
	[stationList addObject:KEED];

	VXReportingStation *KEEN = [VXReportingStation new];
	KEEN.stationIdentifier = @"KEEN";
	KEEN.associatedCity = @"KEENE";
	KEEN.associatedState = @"NH";
	KEEN.latitude = 42.8983;
	KEEN.longitude = 72.2706;
	[stationList addObject:KEEN];

	VXReportingStation *KEEO = [VXReportingStation new];
	KEEO.stationIdentifier = @"KEEO";
	KEEO.associatedCity = @"MEEKER";
	KEEO.associatedState = @"CO";
	KEEO.latitude = 40.0486;
	KEEO.longitude = 107.886;
	[stationList addObject:KEEO];

	VXReportingStation *KEET = [VXReportingStation new];
	KEET.stationIdentifier = @"KEET";
	KEET.associatedCity = @"ALABASTER";
	KEET.associatedState = @"AL";
	KEET.latitude = 33.1769;
	KEET.longitude = 86.7828;
	[stationList addObject:KEET];

	VXReportingStation *KEFD = [VXReportingStation new];
	KEFD.stationIdentifier = @"KEFD";
	KEFD.associatedCity = @"HOUSTON";
	KEFD.associatedState = @"TX";
	KEFD.latitude = 29.6072;
	KEFD.longitude = 95.1586;
	[stationList addObject:KEFD];

	VXReportingStation *KEFT = [VXReportingStation new];
	KEFT.stationIdentifier = @"KEFT";
	KEFT.associatedCity = @"MONROE";
	KEFT.associatedState = @"WI";
	KEFT.latitude = 42.6147;
	KEFT.longitude = 89.5903;
	[stationList addObject:KEFT];

	VXReportingStation *KEGE = [VXReportingStation new];
	KEGE.stationIdentifier = @"KEGE";
	KEGE.associatedCity = @"EAGLE";
	KEGE.associatedState = @"CO";
	KEGE.latitude = 39.6425;
	KEGE.longitude = 106.918;
	[stationList addObject:KEGE];

	VXReportingStation *KEGV = [VXReportingStation new];
	KEGV.stationIdentifier = @"KEGV";
	KEGV.associatedCity = @"EAGLE RIVER";
	KEGV.associatedState = @"WI";
	KEGV.latitude = 45.9317;
	KEGV.longitude = 89.2689;
	[stationList addObject:KEGV];

	VXReportingStation *KEHC = [VXReportingStation new];
	KEHC.stationIdentifier = @"KEHC";
	KEHC.associatedCity = @"EAST CAMERON 278";
	KEHC.associatedState = @"LA";
	KEHC.latitude = 28.4289;
	KEHC.longitude = 92.8781;
	[stationList addObject:KEHC];

	VXReportingStation *KEHO = [VXReportingStation new];
	KEHO.stationIdentifier = @"KEHO";
	KEHO.associatedCity = @"SHELBY";
	KEHO.associatedState = @"NC";
	KEHO.latitude = 35.2556;
	KEHO.longitude = 81.6008;
	[stationList addObject:KEHO];

	VXReportingStation *KEHR = [VXReportingStation new];
	KEHR.stationIdentifier = @"KEHR";
	KEHR.associatedCity = @"HENDERSON";
	KEHR.associatedState = @"KY";
	KEHR.latitude = 37.8078;
	KEHR.longitude = 87.6856;
	[stationList addObject:KEHR];

	VXReportingStation *KEHY = [VXReportingStation new];
	KEHY.stationIdentifier = @"KEHY";
	KEHY.associatedCity = @"ELK MOUNTAIN";
	KEHY.associatedState = @"WY";
	KEHY.latitude = 41.7253;
	KEHY.longitude = 106.459;
	[stationList addObject:KEHY];

	VXReportingStation *KEIK = [VXReportingStation new];
	KEIK.stationIdentifier = @"KEIK";
	KEIK.associatedCity = @"ERIE";
	KEIK.associatedState = @"CO";
	KEIK.latitude = 40.0117;
	KEIK.longitude = 105.05;
	[stationList addObject:KEIK];

	VXReportingStation *KEIR = [VXReportingStation new];
	KEIR.stationIdentifier = @"KEIR";
	KEIR.associatedCity = @"EUGENE ISLAND";
	KEIR.associatedState = @"LA";
	KEIR.latitude = 28.5847;
	KEIR.longitude = 91.4892;
	[stationList addObject:KEIR];

	VXReportingStation *KEKM = [VXReportingStation new];
	KEKM.stationIdentifier = @"KEKM";
	KEKM.associatedCity = @"ELKHART";
	KEKM.associatedState = @"IN";
	KEKM.latitude = 41.7192;
	KEKM.longitude = 86.0017;
	[stationList addObject:KEKM];

	VXReportingStation *KEKN = [VXReportingStation new];
	KEKN.stationIdentifier = @"KEKN";
	KEKN.associatedCity = @"ELKINS";
	KEKN.associatedState = @"WV";
	KEKN.latitude = 38.8894;
	KEKN.longitude = 79.8569;
	[stationList addObject:KEKN];

	VXReportingStation *KEKO = [VXReportingStation new];
	KEKO.stationIdentifier = @"KEKO";
	KEKO.associatedCity = @"ELKO";
	KEKO.associatedState = @"NV";
	KEKO.latitude = 40.8247;
	KEKO.longitude = 115.792;
	[stationList addObject:KEKO];

	VXReportingStation *KEKQ = [VXReportingStation new];
	KEKQ.stationIdentifier = @"KEKQ";
	KEKQ.associatedCity = @"MONTICELLO";
	KEKQ.associatedState = @"KY";
	KEKQ.latitude = 36.8553;
	KEKQ.longitude = 84.8561;
	[stationList addObject:KEKQ];

	VXReportingStation *KEKS = [VXReportingStation new];
	KEKS.stationIdentifier = @"KEKS";
	KEKS.associatedCity = @"ENNIS";
	KEKS.associatedState = @"MT";
	KEKS.latitude = 45.2722;
	KEKS.longitude = 111.647;
	[stationList addObject:KEKS];

	VXReportingStation *KELD = [VXReportingStation new];
	KELD.stationIdentifier = @"KELD";
	KELD.associatedCity = @"EL DORADO";
	KELD.associatedState = @"AR";
	KELD.latitude = 33.2208;
	KELD.longitude = 92.8131;
	[stationList addObject:KELD];

	VXReportingStation *KELK = [VXReportingStation new];
	KELK.stationIdentifier = @"KELK";
	KELK.associatedCity = @"ELK CITY";
	KELK.associatedState = @"OK";
	KELK.latitude = 35.4306;
	KELK.longitude = 99.3942;
	[stationList addObject:KELK];

	VXReportingStation *KELM = [VXReportingStation new];
	KELM.stationIdentifier = @"KELM";
	KELM.associatedCity = @"ELMIRA/CORNING";
	KELM.associatedState = @"NY";
	KELM.latitude = 42.1597;
	KELM.longitude = 76.8914;
	[stationList addObject:KELM];

	VXReportingStation *KELN = [VXReportingStation new];
	KELN.stationIdentifier = @"KELN";
	KELN.associatedCity = @"ELLENSBURG";
	KELN.associatedState = @"WA";
	KELN.latitude = 47.0328;
	KELN.longitude = 120.531;
	[stationList addObject:KELN];

	VXReportingStation *KELO = [VXReportingStation new];
	KELO.stationIdentifier = @"KELO";
	KELO.associatedCity = @"ELY";
	KELO.associatedState = @"MN";
	KELO.latitude = 47.8244;
	KELO.longitude = 91.8306;
	[stationList addObject:KELO];

	VXReportingStation *KELP = [VXReportingStation new];
	KELP.stationIdentifier = @"KELP";
	KELP.associatedCity = @"EL PASO";
	KELP.associatedState = @"TX";
	KELP.latitude = 31.8067;
	KELP.longitude = 106.378;
	[stationList addObject:KELP];

	VXReportingStation *KELY = [VXReportingStation new];
	KELY.stationIdentifier = @"KELY";
	KELY.associatedCity = @"ELY";
	KELY.associatedState = @"NV";
	KELY.latitude = 39.2994;
	KELY.longitude = 114.842;
	[stationList addObject:KELY];

	VXReportingStation *KELZ = [VXReportingStation new];
	KELZ.stationIdentifier = @"KELZ";
	KELZ.associatedCity = @"WELLSVILLE";
	KELZ.associatedState = @"NY";
	KELZ.latitude = 42.1075;
	KELZ.longitude = 77.9842;
	[stationList addObject:KELZ];

	VXReportingStation *KEMK = [VXReportingStation new];
	KEMK.stationIdentifier = @"KEMK";
	KEMK.associatedCity = @"EAST BREAKS";
	KEMK.associatedState = @"TX";
	KEMK.latitude = 27.8186;
	KEMK.longitude = 94.3228;
	[stationList addObject:KEMK];

	VXReportingStation *KEMM = [VXReportingStation new];
	KEMM.stationIdentifier = @"KEMM";
	KEMM.associatedCity = @"KEMMERER";
	KEMM.associatedState = @"WY";
	KEMM.latitude = 41.8239;
	KEMM.longitude = 110.557;
	[stationList addObject:KEMM];

	VXReportingStation *KEMP = [VXReportingStation new];
	KEMP.stationIdentifier = @"KEMP";
	KEMP.associatedCity = @"EMPORIA";
	KEMP.associatedState = @"KS";
	KEMP.latitude = 38.3319;
	KEMP.longitude = 96.1911;
	[stationList addObject:KEMP];

	VXReportingStation *KEMT = [VXReportingStation new];
	KEMT.stationIdentifier = @"KEMT";
	KEMT.associatedCity = @"EL MONTE";
	KEMT.associatedState = @"CA";
	KEMT.latitude = 34.0858;
	KEMT.longitude = 118.035;
	[stationList addObject:KEMT];

	VXReportingStation *KEMV = [VXReportingStation new];
	KEMV.stationIdentifier = @"KEMV";
	KEMV.associatedCity = @"EMPORIA";
	KEMV.associatedState = @"VA";
	KEMV.latitude = 36.6867;
	KEMV.longitude = 77.4828;
	[stationList addObject:KEMV];

	VXReportingStation *KEND = [VXReportingStation new];
	KEND.stationIdentifier = @"KEND";
	KEND.associatedCity = @"ENID";
	KEND.associatedState = @"OK";
	KEND.latitude = 36.3392;
	KEND.longitude = 97.9164;
	[stationList addObject:KEND];

	VXReportingStation *KENL = [VXReportingStation new];
	KENL.stationIdentifier = @"KENL";
	KENL.associatedCity = @"CENTRALIA";
	KENL.associatedState = @"IL";
	KENL.latitude = 38.5147;
	KENL.longitude = 89.0919;
	[stationList addObject:KENL];

	VXReportingStation *KENV = [VXReportingStation new];
	KENV.stationIdentifier = @"KENV";
	KENV.associatedCity = @"WENDOVER";
	KENV.associatedState = @"UT";
	KENV.latitude = 40.7186;
	KENV.longitude = 114.031;
	[stationList addObject:KENV];

	VXReportingStation *KENW = [VXReportingStation new];
	KENW.stationIdentifier = @"KENW";
	KENW.associatedCity = @"KENOSHA";
	KENW.associatedState = @"WI";
	KENW.latitude = 42.5956;
	KENW.longitude = 87.9278;
	[stationList addObject:KENW];

	VXReportingStation *KEOE = [VXReportingStation new];
	KEOE.stationIdentifier = @"KEOE";
	KEOE.associatedCity = @"NEWBERRY";
	KEOE.associatedState = @"SC";
	KEOE.latitude = 34.3092;
	KEOE.longitude = 81.6397;
	[stationList addObject:KEOE];

	VXReportingStation *KEOK = [VXReportingStation new];
	KEOK.stationIdentifier = @"KEOK";
	KEOK.associatedCity = @"KEOKUK";
	KEOK.associatedState = @"IA";
	KEOK.latitude = 40.4597;
	KEOK.longitude = 91.4283;
	[stationList addObject:KEOK];

	VXReportingStation *KEPH = [VXReportingStation new];
	KEPH.stationIdentifier = @"KEPH";
	KEPH.associatedCity = @"EPHRATA";
	KEPH.associatedState = @"WA";
	KEPH.latitude = 47.3075;
	KEPH.longitude = 119.516;
	[stationList addObject:KEPH];

	VXReportingStation *KEPM = [VXReportingStation new];
	KEPM.stationIdentifier = @"KEPM";
	KEPM.associatedCity = @"EASTPORT";
	KEPM.associatedState = @"ME";
	KEPM.latitude = 44.91;
	KEPM.longitude = 67.0125;
	[stationList addObject:KEPM];

	VXReportingStation *KEQA = [VXReportingStation new];
	KEQA.stationIdentifier = @"KEQA";
	KEQA.associatedCity = @"EL DORADO";
	KEQA.associatedState = @"KS";
	KEQA.latitude = 37.7739;
	KEQA.longitude = 96.8175;
	[stationList addObject:KEQA];

	VXReportingStation *KEQY = [VXReportingStation new];
	KEQY.stationIdentifier = @"KEQY";
	KEQY.associatedCity = @"MONROE";
	KEQY.associatedState = @"NC";
	KEQY.latitude = 35.0172;
	KEQY.longitude = 80.6219;
	[stationList addObject:KEQY];

	VXReportingStation *KERI = [VXReportingStation new];
	KERI.stationIdentifier = @"KERI";
	KERI.associatedCity = @"ERIE";
	KERI.associatedState = @"PA";
	KERI.latitude = 42.0819;
	KERI.longitude = 80.1761;
	[stationList addObject:KERI];

	VXReportingStation *KERV = [VXReportingStation new];
	KERV.stationIdentifier = @"KERV";
	KERV.associatedCity = @"KERRVILLE";
	KERV.associatedState = @"TX";
	KERV.latitude = 29.9767;
	KERV.longitude = 99.0856;
	[stationList addObject:KERV];

	VXReportingStation *KESC = [VXReportingStation new];
	KESC.stationIdentifier = @"KESC";
	KESC.associatedCity = @"ESCANABA";
	KESC.associatedState = @"MI";
	KESC.latitude = 45.7225;
	KESC.longitude = 87.0936;
	[stationList addObject:KESC];

	VXReportingStation *KESF = [VXReportingStation new];
	KESF.stationIdentifier = @"KESF";
	KESF.associatedCity = @"ALEXANDRIA";
	KESF.associatedState = @"LA";
	KESF.latitude = 31.3947;
	KESF.longitude = 92.2956;
	[stationList addObject:KESF];

	VXReportingStation *KESN = [VXReportingStation new];
	KESN.stationIdentifier = @"KESN";
	KESN.associatedCity = @"EASTON";
	KESN.associatedState = @"MD";
	KESN.latitude = 38.8042;
	KESN.longitude = 76.0689;
	[stationList addObject:KESN];

	VXReportingStation *KEST = [VXReportingStation new];
	KEST.stationIdentifier = @"KEST";
	KEST.associatedCity = @"ESTHERVILLE";
	KEST.associatedState = @"IA";
	KEST.latitude = 43.4072;
	KEST.longitude = 94.7464;
	[stationList addObject:KEST];

	VXReportingStation *KETB = [VXReportingStation new];
	KETB.stationIdentifier = @"KETB";
	KETB.associatedCity = @"WEST BEND";
	KETB.associatedState = @"WI";
	KETB.latitude = 43.4219;
	KETB.longitude = 88.1278;
	[stationList addObject:KETB];

	VXReportingStation *KETH = [VXReportingStation new];
	KETH.stationIdentifier = @"KETH";
	KETH.associatedCity = @"WHEATON";
	KETH.associatedState = @"MN";
	KETH.latitude = 45.7803;
	KETH.longitude = 96.5433;
	[stationList addObject:KETH];

	VXReportingStation *KEUF = [VXReportingStation new];
	KEUF.stationIdentifier = @"KEUF";
	KEUF.associatedCity = @"EUFAULA";
	KEUF.associatedState = @"AL";
	KEUF.latitude = 31.9517;
	KEUF.longitude = 85.1311;
	[stationList addObject:KEUF];

	VXReportingStation *KEUG = [VXReportingStation new];
	KEUG.stationIdentifier = @"KEUG";
	KEUG.associatedCity = @"EUGENE";
	KEUG.associatedState = @"OR";
	KEUG.latitude = 44.1231;
	KEUG.longitude = 123.219;
	[stationList addObject:KEUG];

	VXReportingStation *KEUL = [VXReportingStation new];
	KEUL.stationIdentifier = @"KEUL";
	KEUL.associatedCity = @"CALDWELL";
	KEUL.associatedState = @"ID";
	KEUL.latitude = 43.6417;
	KEUL.longitude = 116.636;
	[stationList addObject:KEUL];

	VXReportingStation *KEVM = [VXReportingStation new];
	KEVM.stationIdentifier = @"KEVM";
	KEVM.associatedCity = @"EVELETH";
	KEVM.associatedState = @"MN";
	KEVM.latitude = 47.425;
	KEVM.longitude = 92.4983;
	[stationList addObject:KEVM];

	VXReportingStation *KEVV = [VXReportingStation new];
	KEVV.stationIdentifier = @"KEVV";
	KEVV.associatedCity = @"EVANSVILLE";
	KEVV.associatedState = @"IN";
	KEVV.latitude = 38.0383;
	KEVV.longitude = 87.5308;
	[stationList addObject:KEVV];

	VXReportingStation *KEVW = [VXReportingStation new];
	KEVW.stationIdentifier = @"KEVW";
	KEVW.associatedCity = @"EVANSTON";
	KEVW.associatedState = @"WY";
	KEVW.latitude = 41.2747;
	KEVW.longitude = 111.032;
	[stationList addObject:KEVW];

	VXReportingStation *KEWB = [VXReportingStation new];
	KEWB.stationIdentifier = @"KEWB";
	KEWB.associatedCity = @"NEW BEDFORD";
	KEWB.associatedState = @"MA";
	KEWB.latitude = 41.6761;
	KEWB.longitude = 70.9567;
	[stationList addObject:KEWB];

	VXReportingStation *KEWK = [VXReportingStation new];
	KEWK.stationIdentifier = @"KEWK";
	KEWK.associatedCity = @"NEWTON";
	KEWK.associatedState = @"KS";
	KEWK.latitude = 38.0569;
	KEWK.longitude = 97.275;
	[stationList addObject:KEWK];

	VXReportingStation *KEWN = [VXReportingStation new];
	KEWN.stationIdentifier = @"KEWN";
	KEWN.associatedCity = @"NEW BERN";
	KEWN.associatedState = @"NC";
	KEWN.latitude = 35.0728;
	KEWN.longitude = 77.0428;
	[stationList addObject:KEWN];

	VXReportingStation *KEWR = [VXReportingStation new];
	KEWR.stationIdentifier = @"KEWR";
	KEWR.associatedCity = @"NEWARK";
	KEWR.associatedState = @"NJ";
	KEWR.latitude = 40.6922;
	KEWR.longitude = 74.1686;
	[stationList addObject:KEWR];

	VXReportingStation *KEXX = [VXReportingStation new];
	KEXX.stationIdentifier = @"KEXX";
	KEXX.associatedCity = @"LEXINGTON";
	KEXX.associatedState = @"NC";
	KEXX.latitude = 35.7811;
	KEXX.longitude = 80.3036;
	[stationList addObject:KEXX];

	VXReportingStation *KEYE = [VXReportingStation new];
	KEYE.stationIdentifier = @"KEYE";
	KEYE.associatedCity = @"INDIANAPOLIS";
	KEYE.associatedState = @"IN";
	KEYE.latitude = 39.8306;
	KEYE.longitude = 86.2942;
	[stationList addObject:KEYE];

	VXReportingStation *KEYF = [VXReportingStation new];
	KEYF.stationIdentifier = @"KEYF";
	KEYF.associatedCity = @"ELIZABETHTOWN";
	KEYF.associatedState = @"NC";
	KEYF.latitude = 34.6017;
	KEYF.longitude = 78.5792;
	[stationList addObject:KEYF];

	VXReportingStation *KEYW = [VXReportingStation new];
	KEYW.stationIdentifier = @"KEYW";
	KEYW.associatedCity = @"KEY WEST";
	KEYW.associatedState = @"FL";
	KEYW.latitude = 24.5561;
	KEYW.longitude = 81.7594;
	[stationList addObject:KEYW];

	VXReportingStation *KEZF = [VXReportingStation new];
	KEZF.stationIdentifier = @"KEZF";
	KEZF.associatedCity = @"FREDERICKSBURG";
	KEZF.associatedState = @"VA";
	KEZF.latitude = 38.2667;
	KEZF.longitude = 77.4492;
	[stationList addObject:KEZF];

	VXReportingStation *KEZM = [VXReportingStation new];
	KEZM.stationIdentifier = @"KEZM";
	KEZM.associatedCity = @"EASTMAN";
	KEZM.associatedState = @"GA";
	KEZM.latitude = 32.2142;
	KEZM.longitude = 83.1278;
	[stationList addObject:KEZM];

	VXReportingStation *KEZS = [VXReportingStation new];
	KEZS.stationIdentifier = @"KEZS";
	KEZS.associatedCity = @"SHAWANO";
	KEZS.associatedState = @"WI";
	KEZS.latitude = 44.79;
	KEZS.longitude = 88.5664;
	[stationList addObject:KEZS];

	VXReportingStation *KF05 = [VXReportingStation new];
	KF05.stationIdentifier = @"KF05";
	KF05.associatedCity = @"VERNON";
	KF05.associatedState = @"TX";
	KF05.latitude = 34.2256;
	KF05.longitude = 99.2836;
	[stationList addObject:KF05];

	VXReportingStation *KF46 = [VXReportingStation new];
	KF46.stationIdentifier = @"KF46";
	KF46.associatedCity = @"ROCKWALL";
	KF46.associatedState = @"TX";
	KF46.latitude = 32.9306;
	KF46.longitude = 96.4353;
	[stationList addObject:KF46];

	VXReportingStation *KFAF = [VXReportingStation new];
	KFAF.stationIdentifier = @"KFAF";
	KFAF.associatedCity = @"FORT EUSTIS";
	KFAF.associatedState = @"VA";
	KFAF.latitude = 37.1325;
	KFAF.longitude = 76.6086;
	[stationList addObject:KFAF];

	VXReportingStation *KFAM = [VXReportingStation new];
	KFAM.stationIdentifier = @"KFAM";
	KFAM.associatedCity = @"FARMINGTON";
	KFAM.associatedState = @"MO";
	KFAM.latitude = 37.7608;
	KFAM.longitude = 90.4283;
	[stationList addObject:KFAM];

	VXReportingStation *KFAR = [VXReportingStation new];
	KFAR.stationIdentifier = @"KFAR";
	KFAR.associatedCity = @"FARGO";
	KFAR.associatedState = @"ND";
	KFAR.latitude = 46.9206;
	KFAR.longitude = 96.8156;
	[stationList addObject:KFAR];

	VXReportingStation *KFAT = [VXReportingStation new];
	KFAT.stationIdentifier = @"KFAT";
	KFAT.associatedCity = @"FRESNO";
	KFAT.associatedState = @"CA";
	KFAT.latitude = 36.7761;
	KFAT.longitude = 119.718;
	[stationList addObject:KFAT];

	VXReportingStation *KFAY = [VXReportingStation new];
	KFAY.stationIdentifier = @"KFAY";
	KFAY.associatedCity = @"FAYETTEVILLE";
	KFAY.associatedState = @"NC";
	KFAY.latitude = 34.9911;
	KFAY.longitude = 78.88;
	[stationList addObject:KFAY];

	VXReportingStation *KFBG = [VXReportingStation new];
	KFBG.stationIdentifier = @"KFBG";
	KFBG.associatedCity = @"FORT BRAGG";
	KFBG.associatedState = @"NC";
	KFBG.latitude = 35.1317;
	KFBG.longitude = 78.9367;
	[stationList addObject:KFBG];

	VXReportingStation *KFBL = [VXReportingStation new];
	KFBL.stationIdentifier = @"KFBL";
	KFBL.associatedCity = @"FARIBAULT";
	KFBL.associatedState = @"MN";
	KFBL.latitude = 44.3244;
	KFBL.longitude = 93.3106;
	[stationList addObject:KFBL];

	VXReportingStation *KFBR = [VXReportingStation new];
	KFBR.stationIdentifier = @"KFBR";
	KFBR.associatedCity = @"FORT BRIDGER";
	KFBR.associatedState = @"WY";
	KFBR.latitude = 41.3939;
	KFBR.longitude = 110.406;
	[stationList addObject:KFBR];

	VXReportingStation *KFCH = [VXReportingStation new];
	KFCH.stationIdentifier = @"KFCH";
	KFCH.associatedCity = @"FRESNO";
	KFCH.associatedState = @"CA";
	KFCH.latitude = 36.7281;
	KFCH.longitude = 119.814;
	[stationList addObject:KFCH];

	VXReportingStation *KFCI = [VXReportingStation new];
	KFCI.stationIdentifier = @"KFCI";
	KFCI.associatedCity = @"RICHMOND";
	KFCI.associatedState = @"VA";
	KFCI.latitude = 37.4064;
	KFCI.longitude = 77.5247;
	[stationList addObject:KFCI];

	VXReportingStation *KFCM = [VXReportingStation new];
	KFCM.stationIdentifier = @"KFCM";
	KFCM.associatedCity = @"MINNEAPOLIS";
	KFCM.associatedState = @"MN";
	KFCM.latitude = 44.8272;
	KFCM.longitude = 93.4569;
	[stationList addObject:KFCM];

	VXReportingStation *KFCS = [VXReportingStation new];
	KFCS.stationIdentifier = @"KFCS";
	KFCS.associatedCity = @"FORT CARSON";
	KFCS.associatedState = @"CO";
	KFCS.latitude = 38.6783;
	KFCS.longitude = 104.756;
	[stationList addObject:KFCS];

	VXReportingStation *KFDK = [VXReportingStation new];
	KFDK.stationIdentifier = @"KFDK";
	KFDK.associatedCity = @"FREDERICK";
	KFDK.associatedState = @"MD";
	KFDK.latitude = 39.4175;
	KFDK.longitude = 77.3742;
	[stationList addObject:KFDK];

	VXReportingStation *KFDR = [VXReportingStation new];
	KFDR.stationIdentifier = @"KFDR";
	KFDR.associatedCity = @"FREDERICK";
	KFDR.associatedState = @"OK";
	KFDR.latitude = 34.3519;
	KFDR.longitude = 98.9836;
	[stationList addObject:KFDR];

	VXReportingStation *KFDW = [VXReportingStation new];
	KFDW.stationIdentifier = @"KFDW";
	KFDW.associatedCity = @"WINNSBORO";
	KFDW.associatedState = @"SC";
	KFDW.latitude = 34.3153;
	KFDW.longitude = 81.1086;
	[stationList addObject:KFDW];

	VXReportingStation *KFDY = [VXReportingStation new];
	KFDY.stationIdentifier = @"KFDY";
	KFDY.associatedCity = @"FINDLAY";
	KFDY.associatedState = @"OH";
	KFDY.latitude = 41.0133;
	KFDY.longitude = 83.6686;
	[stationList addObject:KFDY];

	VXReportingStation *KFEP = [VXReportingStation new];
	KFEP.stationIdentifier = @"KFEP";
	KFEP.associatedCity = @"FREEPORT";
	KFEP.associatedState = @"IL";
	KFEP.latitude = 42.2461;
	KFEP.longitude = 89.5819;
	[stationList addObject:KFEP];

	VXReportingStation *KFET = [VXReportingStation new];
	KFET.stationIdentifier = @"KFET";
	KFET.associatedCity = @"FREMONT";
	KFET.associatedState = @"NE";
	KFET.latitude = 41.4489;
	KFET.longitude = 96.52;
	[stationList addObject:KFET];

	VXReportingStation *KFFA = [VXReportingStation new];
	KFFA.stationIdentifier = @"KFFA";
	KFFA.associatedCity = @"KILL DEVIL HILLS";
	KFFA.associatedState = @"NC";
	KFFA.latitude = 36.0181;
	KFFA.longitude = 75.6711;
	[stationList addObject:KFFA];

	VXReportingStation *KFFC = [VXReportingStation new];
	KFFC.stationIdentifier = @"KFFC";
	KFFC.associatedCity = @"ATLANTA";
	KFFC.associatedState = @"GA";
	KFFC.latitude = 33.3572;
	KFFC.longitude = 84.5717;
	[stationList addObject:KFFC];

	VXReportingStation *KFFL = [VXReportingStation new];
	KFFL.stationIdentifier = @"KFFL";
	KFFL.associatedCity = @"FAIRFIELD";
	KFFL.associatedState = @"IA";
	KFFL.latitude = 41.0531;
	KFFL.longitude = 91.9789;
	[stationList addObject:KFFL];

	VXReportingStation *KFFM = [VXReportingStation new];
	KFFM.stationIdentifier = @"KFFM";
	KFFM.associatedCity = @"FERGUS FALLS";
	KFFM.associatedState = @"MN";
	KFFM.latitude = 46.2842;
	KFFM.longitude = 96.1567;
	[stationList addObject:KFFM];

	VXReportingStation *KFFO = [VXReportingStation new];
	KFFO.stationIdentifier = @"KFFO";
	KFFO.associatedCity = @"DAYTON";
	KFFO.associatedState = @"OH";
	KFFO.latitude = 39.8261;
	KFFO.longitude = 84.0483;
	[stationList addObject:KFFO];

	VXReportingStation *KFFT = [VXReportingStation new];
	KFFT.stationIdentifier = @"KFFT";
	KFFT.associatedCity = @"FRANKFORT";
	KFFT.associatedState = @"KY";
	KFFT.latitude = 38.1822;
	KFFT.longitude = 84.9044;
	[stationList addObject:KFFT];

	VXReportingStation *KFFX = [VXReportingStation new];
	KFFX.stationIdentifier = @"KFFX";
	KFFX.associatedCity = @"FREMONT";
	KFFX.associatedState = @"MI";
	KFFX.latitude = 43.4417;
	KFFX.longitude = 85.9936;
	[stationList addObject:KFFX];

	VXReportingStation *KFFZ = [VXReportingStation new];
	KFFZ.stationIdentifier = @"KFFZ";
	KFFZ.associatedCity = @"MESA";
	KFFZ.associatedState = @"AZ";
	KFFZ.latitude = 33.4608;
	KFFZ.longitude = 111.728;
	[stationList addObject:KFFZ];

	VXReportingStation *KFGN = [VXReportingStation new];
	KFGN.stationIdentifier = @"KFGN";
	KFGN.associatedCity = @"FLAG ISLAND";
	KFGN.associatedState = @"MN";
	KFGN.latitude = 49.3183;
	KFGN.longitude = 94.9028;
	[stationList addObject:KFGN];

	VXReportingStation *KFGX = [VXReportingStation new];
	KFGX.stationIdentifier = @"KFGX";
	KFGX.associatedCity = @"FLEMINGSBURG";
	KFGX.associatedState = @"KY";
	KFGX.latitude = 38.5417;
	KFGX.longitude = 83.7433;
	[stationList addObject:KFGX];

	VXReportingStation *KFHR = [VXReportingStation new];
	KFHR.stationIdentifier = @"KFHR";
	KFHR.associatedCity = @"FRIDAY HARBOR";
	KFHR.associatedState = @"WA";
	KFHR.latitude = 48.5219;
	KFHR.longitude = 123.024;
	[stationList addObject:KFHR];

	VXReportingStation *KFHU = [VXReportingStation new];
	KFHU.stationIdentifier = @"KFHU";
	KFHU.associatedCity = @"FORT HUACHUCA SIERRA VISTA";
	KFHU.associatedState = @"AZ";
	KFHU.latitude = 31.5883;
	KFHU.longitude = 110.344;
	[stationList addObject:KFHU];

	VXReportingStation *KFIG = [VXReportingStation new];
	KFIG.stationIdentifier = @"KFIG";
	KFIG.associatedCity = @"CLEARFIELD";
	KFIG.associatedState = @"PA";
	KFIG.latitude = 41.0486;
	KFIG.longitude = 78.4131;
	[stationList addObject:KFIG];

	VXReportingStation *KFIN = [VXReportingStation new];
	KFIN.stationIdentifier = @"KFIN";
	KFIN.associatedCity = @"PALM COAST";
	KFIN.associatedState = @"FL";
	KFIN.latitude = 29.4686;
	KFIN.longitude = 81.2081;
	[stationList addObject:KFIN];

	VXReportingStation *KFIT = [VXReportingStation new];
	KFIT.stationIdentifier = @"KFIT";
	KFIT.associatedCity = @"FITCHBURG";
	KFIT.associatedState = @"MA";
	KFIT.latitude = 42.5539;
	KFIT.longitude = 71.7589;
	[stationList addObject:KFIT];

	VXReportingStation *KFKL = [VXReportingStation new];
	KFKL.stationIdentifier = @"KFKL";
	KFKL.associatedCity = @"FRANKLIN";
	KFKL.associatedState = @"PA";
	KFKL.latitude = 41.3778;
	KFKL.longitude = 79.8603;
	[stationList addObject:KFKL];

	VXReportingStation *KFKN = [VXReportingStation new];
	KFKN.stationIdentifier = @"KFKN";
	KFKN.associatedCity = @"FRANKLIN";
	KFKN.associatedState = @"VA";
	KFKN.latitude = 36.6981;
	KFKN.longitude = 76.9036;
	[stationList addObject:KFKN];

	VXReportingStation *KFKR = [VXReportingStation new];
	KFKR.stationIdentifier = @"KFKR";
	KFKR.associatedCity = @"FRANKFORT";
	KFKR.associatedState = @"IN";
	KFKR.latitude = 40.2733;
	KFKR.longitude = 86.5619;
	[stationList addObject:KFKR];

	VXReportingStation *KFKS = [VXReportingStation new];
	KFKS.stationIdentifier = @"KFKS";
	KFKS.associatedCity = @"FRANKFORT";
	KFKS.associatedState = @"MI";
	KFKS.latitude = 44.625;
	KFKS.longitude = 86.2006;
	[stationList addObject:KFKS];

	VXReportingStation *KFLD = [VXReportingStation new];
	KFLD.stationIdentifier = @"KFLD";
	KFLD.associatedCity = @"FOND DU LAC";
	KFLD.associatedState = @"WI";
	KFLD.latitude = 43.7711;
	KFLD.longitude = 88.4883;
	[stationList addObject:KFLD];

	VXReportingStation *KFLG = [VXReportingStation new];
	KFLG.stationIdentifier = @"KFLG";
	KFLG.associatedCity = @"FLAGSTAFF";
	KFLG.associatedState = @"AZ";
	KFLG.latitude = 35.1383;
	KFLG.longitude = 111.671;
	[stationList addObject:KFLG];

	VXReportingStation *KFLL = [VXReportingStation new];
	KFLL.stationIdentifier = @"KFLL";
	KFLL.associatedCity = @"FORT LAUDERDALE";
	KFLL.associatedState = @"FL";
	KFLL.latitude = 26.0725;
	KFLL.longitude = 80.1525;
	[stationList addObject:KFLL];

	VXReportingStation *KFLO = [VXReportingStation new];
	KFLO.stationIdentifier = @"KFLO";
	KFLO.associatedCity = @"FLORENCE";
	KFLO.associatedState = @"SC";
	KFLO.latitude = 34.1853;
	KFLO.longitude = 79.7239;
	[stationList addObject:KFLO];

	VXReportingStation *KFLP = [VXReportingStation new];
	KFLP.stationIdentifier = @"KFLP";
	KFLP.associatedCity = @"FLIPPIN";
	KFLP.associatedState = @"AR";
	KFLP.latitude = 36.2908;
	KFLP.longitude = 92.59;
	[stationList addObject:KFLP];

	VXReportingStation *KFME = [VXReportingStation new];
	KFME.stationIdentifier = @"KFME";
	KFME.associatedCity = @"FORT MEADE(ODENTON)";
	KFME.associatedState = @"MD";
	KFME.latitude = 39.0853;
	KFME.longitude = 76.7592;
	[stationList addObject:KFME];

	VXReportingStation *KFMH = [VXReportingStation new];
	KFMH.stationIdentifier = @"KFMH";
	KFMH.associatedCity = @"FALMOUTH";
	KFMH.associatedState = @"MA";
	KFMH.latitude = 41.6583;
	KFMH.longitude = 70.5214;
	[stationList addObject:KFMH];

	VXReportingStation *KFMM = [VXReportingStation new];
	KFMM.stationIdentifier = @"KFMM";
	KFMM.associatedCity = @"FORT MORGAN";
	KFMM.associatedState = @"CO";
	KFMM.latitude = 40.3436;
	KFMM.longitude = 103.814;
	[stationList addObject:KFMM];

	VXReportingStation *KFMN = [VXReportingStation new];
	KFMN.stationIdentifier = @"KFMN";
	KFMN.associatedCity = @"FARMINGTON";
	KFMN.associatedState = @"NM";
	KFMN.latitude = 36.7411;
	KFMN.longitude = 108.23;
	[stationList addObject:KFMN];

	VXReportingStation *KFMY = [VXReportingStation new];
	KFMY.stationIdentifier = @"KFMY";
	KFMY.associatedCity = @"FORT MYERS";
	KFMY.associatedState = @"FL";
	KFMY.latitude = 26.5864;
	KFMY.longitude = 81.8631;
	[stationList addObject:KFMY];

	VXReportingStation *KFNB = [VXReportingStation new];
	KFNB.stationIdentifier = @"KFNB";
	KFNB.associatedCity = @"FALLS CITY";
	KFNB.associatedState = @"NE";
	KFNB.latitude = 40.0786;
	KFNB.longitude = 95.5919;
	[stationList addObject:KFNB];

	VXReportingStation *KFNL = [VXReportingStation new];
	KFNL.stationIdentifier = @"KFNL";
	KFNL.associatedCity = @"FORT COLLINS/LOVELAND";
	KFNL.associatedState = @"CO";
	KFNL.latitude = 40.4517;
	KFNL.longitude = 105.011;
	[stationList addObject:KFNL];

	VXReportingStation *KFNT = [VXReportingStation new];
	KFNT.stationIdentifier = @"KFNT";
	KFNT.associatedCity = @"FLINT";
	KFNT.associatedState = @"MI";
	KFNT.latitude = 42.9653;
	KFNT.longitude = 83.7433;
	[stationList addObject:KFNT];

	VXReportingStation *KFOA = [VXReportingStation new];
	KFOA.stationIdentifier = @"KFOA";
	KFOA.associatedCity = @"FLORA";
	KFOA.associatedState = @"IL";
	KFOA.latitude = 38.6647;
	KFOA.longitude = 88.4528;
	[stationList addObject:KFOA];

	VXReportingStation *KFOD = [VXReportingStation new];
	KFOD.stationIdentifier = @"KFOD";
	KFOD.associatedCity = @"FORT DODGE";
	KFOD.associatedState = @"IA";
	KFOD.latitude = 42.5514;
	KFOD.longitude = 94.1925;
	[stationList addObject:KFOD];

	VXReportingStation *KFOE = [VXReportingStation new];
	KFOE.stationIdentifier = @"KFOE";
	KFOE.associatedCity = @"TOPEKA";
	KFOE.associatedState = @"KS";
	KFOE.latitude = 38.9508;
	KFOE.longitude = 95.6636;
	[stationList addObject:KFOE];

	VXReportingStation *KFOK = [VXReportingStation new];
	KFOK.stationIdentifier = @"KFOK";
	KFOK.associatedCity = @"WESTHAMPTON BEACH";
	KFOK.associatedState = @"NY";
	KFOK.latitude = 40.8436;
	KFOK.longitude = 72.6317;
	[stationList addObject:KFOK];

	VXReportingStation *KFOT = [VXReportingStation new];
	KFOT.stationIdentifier = @"KFOT";
	KFOT.associatedCity = @"FORTUNA";
	KFOT.associatedState = @"CA";
	KFOT.latitude = 40.5528;
	KFOT.longitude = 124.134;
	[stationList addObject:KFOT];

	VXReportingStation *KFOZ = [VXReportingStation new];
	KFOZ.stationIdentifier = @"KFOZ";
	KFOZ.associatedCity = @"BIGFORK";
	KFOZ.associatedState = @"MN";
	KFOZ.latitude = 47.7831;
	KFOZ.longitude = 93.6536;
	[stationList addObject:KFOZ];

	VXReportingStation *KFPK = [VXReportingStation new];
	KFPK.stationIdentifier = @"KFPK";
	KFPK.associatedCity = @"CHARLOTTE";
	KFPK.associatedState = @"MI";
	KFPK.latitude = 43.5672;
	KFPK.longitude = 84.8011;
	[stationList addObject:KFPK];

	VXReportingStation *KFPR = [VXReportingStation new];
	KFPR.stationIdentifier = @"KFPR";
	KFPR.associatedCity = @"FORT PIERCE";
	KFPR.associatedState = @"FL";
	KFPR.latitude = 27.495;
	KFPR.longitude = 80.3681;
	[stationList addObject:KFPR];

	VXReportingStation *KFQD = [VXReportingStation new];
	KFQD.stationIdentifier = @"KFQD";
	KFQD.associatedCity = @"RUTHERFORDTON";
	KFQD.associatedState = @"NC";
	KFQD.latitude = 35.4281;
	KFQD.longitude = 81.935;
	[stationList addObject:KFQD];

	VXReportingStation *KFRG = [VXReportingStation new];
	KFRG.stationIdentifier = @"KFRG";
	KFRG.associatedCity = @"FARMINGDALE";
	KFRG.associatedState = @"NY";
	KFRG.latitude = 40.7286;
	KFRG.longitude = 73.4133;
	[stationList addObject:KFRG];

	VXReportingStation *KFRI = [VXReportingStation new];
	KFRI.stationIdentifier = @"KFRI";
	KFRI.associatedCity = @"FORT RILEY(JUNCTION CITY)";
	KFRI.associatedState = @"KS";
	KFRI.latitude = 39.0553;
	KFRI.longitude = 96.7644;
	[stationList addObject:KFRI];

	VXReportingStation *KFRM = [VXReportingStation new];
	KFRM.stationIdentifier = @"KFRM";
	KFRM.associatedCity = @"FAIRMONT";
	KFRM.associatedState = @"MN";
	KFRM.latitude = 43.6439;
	KFRM.longitude = 94.4156;
	[stationList addObject:KFRM];

	VXReportingStation *KFRR = [VXReportingStation new];
	KFRR.stationIdentifier = @"KFRR";
	KFRR.associatedCity = @"FRONT ROYAL";
	KFRR.associatedState = @"VA";
	KFRR.latitude = 38.9169;
	KFRR.longitude = 78.2481;
	[stationList addObject:KFRR];

	VXReportingStation *KFSD = [VXReportingStation new];
	KFSD.stationIdentifier = @"KFSD";
	KFSD.associatedCity = @"SIOUX FALLS";
	KFSD.associatedState = @"SD";
	KFSD.latitude = 43.5819;
	KFSD.longitude = 96.7417;
	[stationList addObject:KFSD];

	VXReportingStation *KFSE = [VXReportingStation new];
	KFSE.stationIdentifier = @"KFSE";
	KFSE.associatedCity = @"FOSSTON";
	KFSE.associatedState = @"MN";
	KFSE.latitude = 47.5928;
	KFSE.longitude = 95.7733;
	[stationList addObject:KFSE];

	VXReportingStation *KFSI = [VXReportingStation new];
	KFSI.stationIdentifier = @"KFSI";
	KFSI.associatedCity = @"FORT SILL";
	KFSI.associatedState = @"OK";
	KFSI.latitude = 34.6497;
	KFSI.longitude = 98.4019;
	[stationList addObject:KFSI];

	VXReportingStation *KFSM = [VXReportingStation new];
	KFSM.stationIdentifier = @"KFSM";
	KFSM.associatedCity = @"FORT SMITH";
	KFSM.associatedState = @"AR";
	KFSM.latitude = 35.3364;
	KFSM.longitude = 94.3672;
	[stationList addObject:KFSM];

	VXReportingStation *KFSO = [VXReportingStation new];
	KFSO.stationIdentifier = @"KFSO";
	KFSO.associatedCity = @"HIGHGATE";
	KFSO.associatedState = @"VT";
	KFSO.latitude = 44.9403;
	KFSO.longitude = 44.9447;
	[stationList addObject:KFSO];

	VXReportingStation *KFST = [VXReportingStation new];
	KFST.stationIdentifier = @"KFST";
	KFST.associatedCity = @"FORT STOCKTON";
	KFST.associatedState = @"TX";
	KFST.latitude = 30.9156;
	KFST.longitude = 102.916;
	[stationList addObject:KFST];

	VXReportingStation *KFSW = [VXReportingStation new];
	KFSW.stationIdentifier = @"KFSW";
	KFSW.associatedCity = @"FORT MADISON";
	KFSW.associatedState = @"IA";
	KFSW.latitude = 40.6592;
	KFSW.longitude = 91.3267;
	[stationList addObject:KFSW];

	VXReportingStation *KFTG = [VXReportingStation new];
	KFTG.stationIdentifier = @"KFTG";
	KFTG.associatedCity = @"DENVER";
	KFTG.associatedState = @"CO";
	KFTG.latitude = 39.785;
	KFTG.longitude = 104.543;
	[stationList addObject:KFTG];

	VXReportingStation *KFTK = [VXReportingStation new];
	KFTK.stationIdentifier = @"KFTK";
	KFTK.associatedCity = @"FORT KNOX";
	KFTK.associatedState = @"KY";
	KFTK.latitude = 37.9069;
	KFTK.longitude = 85.9719;
	[stationList addObject:KFTK];

	VXReportingStation *KFTN = [VXReportingStation new];
	KFTN.stationIdentifier = @"KFTN";
	KFTN.associatedCity = @"CARRIZO SPRINGS";
	KFTN.associatedState = @"TX";
	KFTN.latitude = 28.2111;
	KFTN.longitude = 100.024;
	[stationList addObject:KFTN];

	VXReportingStation *KFTW = [VXReportingStation new];
	KFTW.stationIdentifier = @"KFTW";
	KFTW.associatedCity = @"FORT WORTH";
	KFTW.associatedState = @"TX";
	KFTW.latitude = 32.8197;
	KFTW.longitude = 97.3622;
	[stationList addObject:KFTW];

	VXReportingStation *KFTY = [VXReportingStation new];
	KFTY.stationIdentifier = @"KFTY";
	KFTY.associatedCity = @"ATLANTA";
	KFTY.associatedState = @"GA";
	KFTY.latitude = 33.7789;
	KFTY.longitude = 84.5211;
	[stationList addObject:KFTY];

	VXReportingStation *KFUL = [VXReportingStation new];
	KFUL.stationIdentifier = @"KFUL";
	KFUL.associatedCity = @"FULLERTON";
	KFUL.associatedState = @"CA";
	KFUL.latitude = 33.8719;
	KFUL.longitude = 117.98;
	[stationList addObject:KFUL];

	VXReportingStation *KFVE = [VXReportingStation new];
	KFVE.stationIdentifier = @"KFVE";
	KFVE.associatedCity = @"FRENCHVILLE";
	KFVE.associatedState = @"ME";
	KFVE.latitude = 47.2853;
	KFVE.longitude = 68.3125;
	[stationList addObject:KFVE];

	VXReportingStation *KFVX = [VXReportingStation new];
	KFVX.stationIdentifier = @"KFVX";
	KFVX.associatedCity = @"FARMVILLE";
	KFVX.associatedState = @"VA";
	KFVX.latitude = 37.3575;
	KFVX.longitude = 78.4378;
	[stationList addObject:KFVX];

	VXReportingStation *KFWA = [VXReportingStation new];
	KFWA.stationIdentifier = @"KFWA";
	KFWA.associatedCity = @"FORT WAYNE";
	KFWA.associatedState = @"IN";
	KFWA.latitude = 40.9783;
	KFWA.longitude = 85.195;
	[stationList addObject:KFWA];

	VXReportingStation *KFWB = [VXReportingStation new];
	KFWB.stationIdentifier = @"KFWB";
	KFWB.associatedCity = @"BRANSON WEST";
	KFWB.associatedState = @"MO";
	KFWB.latitude = 36.6983;
	KFWB.longitude = 93.4022;
	[stationList addObject:KFWB];

	VXReportingStation *KFWC = [VXReportingStation new];
	KFWC.stationIdentifier = @"KFWC";
	KFWC.associatedCity = @"FAIRFIELD";
	KFWC.associatedState = @"IL";
	KFWC.latitude = 38.3786;
	KFWC.longitude = 88.4125;
	[stationList addObject:KFWC];

	VXReportingStation *KFWN = [VXReportingStation new];
	KFWN.stationIdentifier = @"KFWN";
	KFWN.associatedCity = @"SUSSEX";
	KFWN.associatedState = @"NJ";
	KFWN.latitude = 41.2006;
	KFWN.longitude = 74.6247;
	[stationList addObject:KFWN];

	VXReportingStation *KFWS = [VXReportingStation new];
	KFWS.stationIdentifier = @"KFWS";
	KFWS.associatedCity = @"FORT WORTH";
	KFWS.associatedState = @"TX";
	KFWS.latitude = 32.565;
	KFWS.longitude = 97.3081;
	[stationList addObject:KFWS];

	VXReportingStation *KFXE = [VXReportingStation new];
	KFXE.stationIdentifier = @"KFXE";
	KFXE.associatedCity = @"FORT LAUDERDALE";
	KFXE.associatedState = @"FL";
	KFXE.latitude = 26.1972;
	KFXE.longitude = 80.1706;
	[stationList addObject:KFXE];

	VXReportingStation *KFYG = [VXReportingStation new];
	KFYG.stationIdentifier = @"KFYG";
	KFYG.associatedCity = @"WASHINGTON";
	KFYG.associatedState = @"MO";
	KFYG.latitude = 38.5875;
	KFYG.longitude = 90.9936;
	[stationList addObject:KFYG];

	VXReportingStation *KFYJ = [VXReportingStation new];
	KFYJ.stationIdentifier = @"KFYJ";
	KFYJ.associatedCity = @"WEST POINT";
	KFYJ.associatedState = @"VA";
	KFYJ.latitude = 37.5211;
	KFYJ.longitude = 76.7644;
	[stationList addObject:KFYJ];

	VXReportingStation *KFYM = [VXReportingStation new];
	KFYM.stationIdentifier = @"KFYM";
	KFYM.associatedCity = @"FAYETTEVILLE";
	KFYM.associatedState = @"TN";
	KFYM.latitude = 35.0583;
	KFYM.longitude = 86.5644;
	[stationList addObject:KFYM];

	VXReportingStation *KFYV = [VXReportingStation new];
	KFYV.stationIdentifier = @"KFYV";
	KFYV.associatedCity = @"FAYETTEVILLE";
	KFYV.associatedState = @"AR";
	KFYV.latitude = 36.005;
	KFYV.longitude = 94.17;
	[stationList addObject:KFYV];

	VXReportingStation *KFZG = [VXReportingStation new];
	KFZG.stationIdentifier = @"KFZG";
	KFZG.associatedCity = @"FITZGERALD";
	KFZG.associatedState = @"GA";
	KFZG.latitude = 31.6836;
	KFZG.longitude = 83.2703;
	[stationList addObject:KFZG];

	VXReportingStation *KFZY = [VXReportingStation new];
	KFZY.stationIdentifier = @"KFZY";
	KFZY.associatedCity = @"FULTON";
	KFZY.associatedState = @"NY";
	KFZY.latitude = 43.3506;
	KFZY.longitude = 76.3878;
	[stationList addObject:KFZY];

	VXReportingStation *KGAD = [VXReportingStation new];
	KGAD.stationIdentifier = @"KGAD";
	KGAD.associatedCity = @"GADSDEN";
	KGAD.associatedState = @"AL";
	KGAD.latitude = 33.9725;
	KGAD.longitude = 86.0889;
	[stationList addObject:KGAD];

	VXReportingStation *KGAG = [VXReportingStation new];
	KGAG.stationIdentifier = @"KGAG";
	KGAG.associatedCity = @"GAGE";
	KGAG.associatedState = @"OK";
	KGAG.latitude = 36.2953;
	KGAG.longitude = 99.7764;
	[stationList addObject:KGAG];

	VXReportingStation *KGAI = [VXReportingStation new];
	KGAI.stationIdentifier = @"KGAI";
	KGAI.associatedCity = @"GAITHERSBURG";
	KGAI.associatedState = @"MD";
	KGAI.latitude = 39.1683;
	KGAI.longitude = 77.1658;
	[stationList addObject:KGAI];

	VXReportingStation *KGAO = [VXReportingStation new];
	KGAO.stationIdentifier = @"KGAO";
	KGAO.associatedCity = @"GALLIANO";
	KGAO.associatedState = @"LA";
	KGAO.latitude = 29.4408;
	KGAO.longitude = 90.2611;
	[stationList addObject:KGAO];

	VXReportingStation *KGBD = [VXReportingStation new];
	KGBD.stationIdentifier = @"KGBD";
	KGBD.associatedCity = @"GREAT BEND";
	KGBD.associatedState = @"KS";
	KGBD.latitude = 38.3442;
	KGBD.longitude = 98.8592;
	[stationList addObject:KGBD];

	VXReportingStation *KGBG = [VXReportingStation new];
	KGBG.stationIdentifier = @"KGBG";
	KGBG.associatedCity = @"GALESBURG";
	KGBG.associatedState = @"IL";
	KGBG.latitude = 40.9378;
	KGBG.longitude = 90.4311;
	[stationList addObject:KGBG];

	VXReportingStation *KGBK = [VXReportingStation new];
	KGBK.stationIdentifier = @"KGBK";
	KGBK.associatedCity = @"MAGNOLIA";
	KGBK.associatedState = @"LA";
	KGBK.latitude = 27.2039;
	KGBK.longitude = 92.2025;
	[stationList addObject:KGBK];

	VXReportingStation *KGCC = [VXReportingStation new];
	KGCC.stationIdentifier = @"KGCC";
	KGCC.associatedCity = @"GILLETTE";
	KGCC.associatedState = @"WY";
	KGCC.latitude = 44.3489;
	KGCC.longitude = 105.539;
	[stationList addObject:KGCC];

	VXReportingStation *KGCD = [VXReportingStation new];
	KGCD.stationIdentifier = @"KGCD";
	KGCD.associatedCity = @"JOHN DAY";
	KGCD.associatedState = @"OR";
	KGCD.latitude = 44.4042;
	KGCD.longitude = 118.963;
	[stationList addObject:KGCD];

	VXReportingStation *KGCK = [VXReportingStation new];
	KGCK.stationIdentifier = @"KGCK";
	KGCK.associatedCity = @"GARDEN CITY";
	KGCK.associatedState = @"KS";
	KGCK.latitude = 37.9275;
	KGCK.longitude = 100.724;
	[stationList addObject:KGCK];

	VXReportingStation *KGCM = [VXReportingStation new];
	KGCM.stationIdentifier = @"KGCM";
	KGCM.associatedCity = @"CLAREMORE";
	KGCM.associatedState = @"OK";
	KGCM.latitude = 36.2925;
	KGCM.longitude = 95.4794;
	[stationList addObject:KGCM];

	VXReportingStation *KGCN = [VXReportingStation new];
	KGCN.stationIdentifier = @"KGCN";
	KGCN.associatedCity = @"GRAND CANYON";
	KGCN.associatedState = @"AZ";
	KGCN.latitude = 35.9522;
	KGCN.longitude = 112.147;
	[stationList addObject:KGCN];

	VXReportingStation *KGDB = [VXReportingStation new];
	KGDB.stationIdentifier = @"KGDB";
	KGDB.associatedCity = @"GRANITE FALLS";
	KGDB.associatedState = @"MN";
	KGDB.latitude = 44.7531;
	KGDB.longitude = 95.5558;
	[stationList addObject:KGDB];

	VXReportingStation *KGDJ = [VXReportingStation new];
	KGDJ.stationIdentifier = @"KGDJ";
	KGDJ.associatedCity = @"GRANBURY";
	KGDJ.associatedState = @"TX";
	KGDJ.latitude = 32.4442;
	KGDJ.longitude = 97.8167;
	[stationList addObject:KGDJ];

	VXReportingStation *KGDP = [VXReportingStation new];
	KGDP.stationIdentifier = @"KGDP";
	KGDP.associatedCity = @"GUADALUPE PASS";
	KGDP.associatedState = @"TX";
	KGDP.latitude = 31.8328;
	KGDP.longitude = 104.809;
	[stationList addObject:KGDP];

	VXReportingStation *KGDV = [VXReportingStation new];
	KGDV.stationIdentifier = @"KGDV";
	KGDV.associatedCity = @"GLENDIVE";
	KGDV.associatedState = @"MT";
	KGDV.latitude = 47.1386;
	KGDV.longitude = 104.807;
	[stationList addObject:KGDV];

	VXReportingStation *KGED = [VXReportingStation new];
	KGED.stationIdentifier = @"KGED";
	KGED.associatedCity = @"GEORGETOWN";
	KGED.associatedState = @"DE";
	KGED.latitude = 38.6892;
	KGED.longitude = 75.3589;
	[stationList addObject:KGED];

	VXReportingStation *KGEG = [VXReportingStation new];
	KGEG.stationIdentifier = @"KGEG";
	KGEG.associatedCity = @"SPOKANE";
	KGEG.associatedState = @"WA";
	KGEG.latitude = 47.6197;
	KGEG.longitude = 117.534;
	[stationList addObject:KGEG];

	VXReportingStation *KGEV = [VXReportingStation new];
	KGEV.stationIdentifier = @"KGEV";
	KGEV.associatedCity = @"JEFFERSON";
	KGEV.associatedState = @"NC";
	KGEV.latitude = 36.4322;
	KGEV.longitude = 81.4194;
	[stationList addObject:KGEV];

	VXReportingStation *KGEY = [VXReportingStation new];
	KGEY.stationIdentifier = @"KGEY";
	KGEY.associatedCity = @"GREYBULL";
	KGEY.associatedState = @"WY";
	KGEY.latitude = 44.5172;
	KGEY.longitude = 108.075;
	[stationList addObject:KGEY];

	VXReportingStation *KGEZ = [VXReportingStation new];
	KGEZ.stationIdentifier = @"KGEZ";
	KGEZ.associatedCity = @"SHELBYVILLE";
	KGEZ.associatedState = @"IN";
	KGEZ.latitude = 39.5831;
	KGEZ.longitude = 85.8047;
	[stationList addObject:KGEZ];

	VXReportingStation *KGFA = [VXReportingStation new];
	KGFA.stationIdentifier = @"KGFA";
	KGFA.associatedCity = @"GREAT FALLS";
	KGFA.associatedState = @"MT";
	KGFA.latitude = 47.5044;
	KGFA.longitude = 111.187;
	[stationList addObject:KGFA];

	VXReportingStation *KGFK = [VXReportingStation new];
	KGFK.stationIdentifier = @"KGFK";
	KGFK.associatedCity = @"GRAND FORKS";
	KGFK.associatedState = @"ND";
	KGFK.latitude = 47.9492;
	KGFK.longitude = 97.1761;
	[stationList addObject:KGFK];

	VXReportingStation *KGFL = [VXReportingStation new];
	KGFL.stationIdentifier = @"KGFL";
	KGFL.associatedCity = @"GLENS FALLS";
	KGFL.associatedState = @"NY";
	KGFL.latitude = 43.3411;
	KGFL.longitude = 73.6103;
	[stationList addObject:KGFL];

	VXReportingStation *KGGE = [VXReportingStation new];
	KGGE.stationIdentifier = @"KGGE";
	KGGE.associatedCity = @"GEORGETOWN";
	KGGE.associatedState = @"SC";
	KGGE.latitude = 33.3117;
	KGGE.longitude = 79.3194;
	[stationList addObject:KGGE];

	VXReportingStation *KGGG = [VXReportingStation new];
	KGGG.stationIdentifier = @"KGGG";
	KGGG.associatedCity = @"LONGVIEW";
	KGGG.associatedState = @"TX";
	KGGG.latitude = 32.3839;
	KGGG.longitude = 94.7114;
	[stationList addObject:KGGG];

	VXReportingStation *KGGI = [VXReportingStation new];
	KGGI.stationIdentifier = @"KGGI";
	KGGI.associatedCity = @"GRINNELL";
	KGGI.associatedState = @"IA";
	KGGI.latitude = 41.7089;
	KGGI.longitude = 92.7347;
	[stationList addObject:KGGI];

	VXReportingStation *KGGW = [VXReportingStation new];
	KGGW.stationIdentifier = @"KGGW";
	KGGW.associatedCity = @"GLASGOW";
	KGGW.associatedState = @"MT";
	KGGW.latitude = 48.2122;
	KGGW.longitude = 106.615;
	[stationList addObject:KGGW];

	VXReportingStation *KGHB = [VXReportingStation new];
	KGHB.stationIdentifier = @"KGHB";
	KGHB.associatedCity = @"SALSA";
	KGHB.associatedState = @"LA";
	KGHB.latitude = 27.8403;
	KGHB.longitude = 91.9878;
	[stationList addObject:KGHB];

	VXReportingStation *KGHG = [VXReportingStation new];
	KGHG.stationIdentifier = @"KGHG";
	KGHG.associatedCity = @"MARSHFIELD";
	KGHG.associatedState = @"MA";
	KGHG.latitude = 42.0981;
	KGHG.longitude = 70.6719;
	[stationList addObject:KGHG];

	VXReportingStation *KGHW = [VXReportingStation new];
	KGHW.stationIdentifier = @"KGHW";
	KGHW.associatedCity = @"GLENWOOD";
	KGHW.associatedState = @"MN";
	KGHW.latitude = 45.6439;
	KGHW.longitude = 95.3203;
	[stationList addObject:KGHW];

	VXReportingStation *KGIC = [VXReportingStation new];
	KGIC.stationIdentifier = @"KGIC";
	KGIC.associatedCity = @"GRANGEVILLE";
	KGIC.associatedState = @"ID";
	KGIC.latitude = 45.9408;
	KGIC.longitude = 116.132;
	[stationList addObject:KGIC];

	VXReportingStation *KGIF = [VXReportingStation new];
	KGIF.stationIdentifier = @"KGIF";
	KGIF.associatedCity = @"WINTER HAVEN";
	KGIF.associatedState = @"FL";
	KGIF.latitude = 28.0628;
	KGIF.longitude = 81.7531;
	[stationList addObject:KGIF];

	VXReportingStation *KGJT = [VXReportingStation new];
	KGJT.stationIdentifier = @"KGJT";
	KGJT.associatedCity = @"GRAND JUNCTION";
	KGJT.associatedState = @"CO";
	KGJT.latitude = 39.1222;
	KGJT.longitude = 108.527;
	[stationList addObject:KGJT];

	VXReportingStation *KGKJ = [VXReportingStation new];
	KGKJ.stationIdentifier = @"KGKJ";
	KGKJ.associatedCity = @"MEADVILLE";
	KGKJ.associatedState = @"PA";
	KGKJ.latitude = 41.6264;
	KGKJ.longitude = 80.2147;
	[stationList addObject:KGKJ];

	VXReportingStation *KGKT = [VXReportingStation new];
	KGKT.stationIdentifier = @"KGKT";
	KGKT.associatedCity = @"SEVIERVILLE";
	KGKT.associatedState = @"TN";
	KGKT.latitude = 35.8578;
	KGKT.longitude = 83.5286;
	[stationList addObject:KGKT];

	VXReportingStation *KGKY = [VXReportingStation new];
	KGKY.stationIdentifier = @"KGKY";
	KGKY.associatedCity = @"ARLINGTON";
	KGKY.associatedState = @"TX";
	KGKY.latitude = 32.6636;
	KGKY.longitude = 97.0942;
	[stationList addObject:KGKY];

	VXReportingStation *KGLD = [VXReportingStation new];
	KGLD.stationIdentifier = @"KGLD";
	KGLD.associatedCity = @"GOODLAND";
	KGLD.associatedState = @"KS";
	KGLD.latitude = 39.3706;
	KGLD.longitude = 101.699;
	[stationList addObject:KGLD];

	VXReportingStation *KGLE = [VXReportingStation new];
	KGLE.stationIdentifier = @"KGLE";
	KGLE.associatedCity = @"GAINESVILLE";
	KGLE.associatedState = @"TX";
	KGLE.latitude = 33.6511;
	KGLE.longitude = 97.1969;
	[stationList addObject:KGLE];

	VXReportingStation *KGLH = [VXReportingStation new];
	KGLH.stationIdentifier = @"KGLH";
	KGLH.associatedCity = @"GREENVILLE";
	KGLH.associatedState = @"MS";
	KGLH.latitude = 33.4828;
	KGLH.longitude = 90.9856;
	[stationList addObject:KGLH];

	VXReportingStation *KGLR = [VXReportingStation new];
	KGLR.stationIdentifier = @"KGLR";
	KGLR.associatedCity = @"GAYLORD";
	KGLR.associatedState = @"MI";
	KGLR.latitude = 45.0133;
	KGLR.longitude = 84.7036;
	[stationList addObject:KGLR];

	VXReportingStation *KGLS = [VXReportingStation new];
	KGLS.stationIdentifier = @"KGLS";
	KGLS.associatedCity = @"GALVESTON";
	KGLS.associatedState = @"TX";
	KGLS.latitude = 29.2653;
	KGLS.longitude = 94.8603;
	[stationList addObject:KGLS];

	VXReportingStation *KGLV = [VXReportingStation new];
	KGLV.stationIdentifier = @"KGLV";
	KGLV.associatedCity = @"GOLOVIN";
	KGLV.associatedState = @"AK";
	KGLV.latitude = 64.5503;
	KGLV.longitude = 163.007;
	[stationList addObject:KGLV];

	VXReportingStation *KGLW = [VXReportingStation new];
	KGLW.stationIdentifier = @"KGLW";
	KGLW.associatedCity = @"GLASGOW";
	KGLW.associatedState = @"KY";
	KGLW.latitude = 37.0317;
	KGLW.longitude = 85.9536;
	[stationList addObject:KGLW];

	VXReportingStation *KGLY = [VXReportingStation new];
	KGLY.stationIdentifier = @"KGLY";
	KGLY.associatedCity = @"CLINTON";
	KGLY.associatedState = @"MO";
	KGLY.latitude = 38.3564;
	KGLY.longitude = 93.6842;
	[stationList addObject:KGLY];

	VXReportingStation *KGMJ = [VXReportingStation new];
	KGMJ.stationIdentifier = @"KGMJ";
	KGMJ.associatedCity = @"GROVE";
	KGMJ.associatedState = @"OK";
	KGMJ.latitude = 36.6067;
	KGMJ.longitude = 94.7383;
	[stationList addObject:KGMJ];

	VXReportingStation *KGMU = [VXReportingStation new];
	KGMU.stationIdentifier = @"KGMU";
	KGMU.associatedCity = @"GREENVILLE";
	KGMU.associatedState = @"SC";
	KGMU.latitude = 34.8478;
	KGMU.longitude = 82.35;
	[stationList addObject:KGMU];

	VXReportingStation *KGNC = [VXReportingStation new];
	KGNC.stationIdentifier = @"KGNC";
	KGNC.associatedCity = @"SEMINOLE";
	KGNC.associatedState = @"TX";
	KGNC.latitude = 32.6753;
	KGNC.longitude = 102.653;
	[stationList addObject:KGNC];

	VXReportingStation *KGNF = [VXReportingStation new];
	KGNF.stationIdentifier = @"KGNF";
	KGNF.associatedCity = @"GRENADA";
	KGNF.associatedState = @"MS";
	KGNF.latitude = 33.8322;
	KGNF.longitude = 89.7981;
	[stationList addObject:KGNF];

	VXReportingStation *KGNT = [VXReportingStation new];
	KGNT.stationIdentifier = @"KGNT";
	KGNT.associatedCity = @"GRANTS";
	KGNT.associatedState = @"NM";
	KGNT.latitude = 35.1672;
	KGNT.longitude = 107.902;
	[stationList addObject:KGNT];

	VXReportingStation *KGNV = [VXReportingStation new];
	KGNV.stationIdentifier = @"KGNV";
	KGNV.associatedCity = @"GAINESVILLE";
	KGNV.associatedState = @"FL";
	KGNV.latitude = 29.69;
	KGNV.longitude = 82.2717;
	[stationList addObject:KGNV];

	VXReportingStation *KGOK = [VXReportingStation new];
	KGOK.stationIdentifier = @"KGOK";
	KGOK.associatedCity = @"GUTHRIE";
	KGOK.associatedState = @"OK";
	KGOK.latitude = 35.8497;
	KGOK.longitude = 97.4156;
	[stationList addObject:KGOK];

	VXReportingStation *KGON = [VXReportingStation new];
	KGON.stationIdentifier = @"KGON";
	KGON.associatedCity = @"GROTON (NEW LONDON)";
	KGON.associatedState = @"CT";
	KGON.latitude = 41.33;
	KGON.longitude = 72.045;
	[stationList addObject:KGON];

	VXReportingStation *KGOO = [VXReportingStation new];
	KGOO.stationIdentifier = @"KGOO";
	KGOO.associatedCity = @"GRASS VALLEY";
	KGOO.associatedState = @"CA";
	KGOO.latitude = 39.2239;
	KGOO.longitude = 121.003;
	[stationList addObject:KGOO];

	VXReportingStation *KGOP = [VXReportingStation new];
	KGOP.stationIdentifier = @"KGOP";
	KGOP.associatedCity = @"GATESVILLE";
	KGOP.associatedState = @"TX";
	KGOP.latitude = 31.4211;
	KGOP.longitude = 97.7969;
	[stationList addObject:KGOP];

	VXReportingStation *KGOV = [VXReportingStation new];
	KGOV.stationIdentifier = @"KGOV";
	KGOV.associatedCity = @"GRAYLING";
	KGOV.associatedState = @"MI";
	KGOV.latitude = 44.6803;
	KGOV.longitude = 84.7286;
	[stationList addObject:KGOV];

	VXReportingStation *KGPH = [VXReportingStation new];
	KGPH.stationIdentifier = @"KGPH";
	KGPH.associatedCity = @"MOSBY";
	KGPH.associatedState = @"MO";
	KGPH.latitude = 39.3325;
	KGPH.longitude = 94.3094;
	[stationList addObject:KGPH];

	VXReportingStation *KGPI = [VXReportingStation new];
	KGPI.stationIdentifier = @"KGPI";
	KGPI.associatedCity = @"KALISPELL";
	KGPI.associatedState = @"MT";
	KGPI.latitude = 48.3114;
	KGPI.longitude = 114.255;
	[stationList addObject:KGPI];

	VXReportingStation *KGPM = [VXReportingStation new];
	KGPM.stationIdentifier = @"KGPM";
	KGPM.associatedCity = @"GRAND PRAIRIE";
	KGPM.associatedState = @"TX";
	KGPM.latitude = 32.6983;
	KGPM.longitude = 97.0464;
	[stationList addObject:KGPM];

	VXReportingStation *KGPT = [VXReportingStation new];
	KGPT.stationIdentifier = @"KGPT";
	KGPT.associatedCity = @"GULFPORT";
	KGPT.associatedState = @"MS";
	KGPT.latitude = 30.4072;
	KGPT.longitude = 89.07;
	[stationList addObject:KGPT];

	VXReportingStation *KGPZ = [VXReportingStation new];
	KGPZ.stationIdentifier = @"KGPZ";
	KGPZ.associatedCity = @"GRAND RAPIDS";
	KGPZ.associatedState = @"MN";
	KGPZ.latitude = 47.2108;
	KGPZ.longitude = 93.5097;
	[stationList addObject:KGPZ];

	VXReportingStation *KGRB = [VXReportingStation new];
	KGRB.stationIdentifier = @"KGRB";
	KGRB.associatedCity = @"GREEN BAY";
	KGRB.associatedState = @"WI";
	KGRB.latitude = 44.485;
	KGRB.longitude = 88.1294;
	[stationList addObject:KGRB];

	VXReportingStation *KGRD = [VXReportingStation new];
	KGRD.stationIdentifier = @"KGRD";
	KGRD.associatedCity = @"GREENWOOD";
	KGRD.associatedState = @"SC";
	KGRD.latitude = 34.2486;
	KGRD.longitude = 82.1589;
	[stationList addObject:KGRD];

	VXReportingStation *KGRF = [VXReportingStation new];
	KGRF.stationIdentifier = @"KGRF";
	KGRF.associatedCity = @"FORT LEWIS/TACOMA";
	KGRF.associatedState = @"WA";
	KGRF.latitude = 47.0792;
	KGRF.longitude = 122.581;
	[stationList addObject:KGRF];

	VXReportingStation *KGRI = [VXReportingStation new];
	KGRI.stationIdentifier = @"KGRI";
	KGRI.associatedCity = @"GRAND ISLAND";
	KGRI.associatedState = @"NE";
	KGRI.latitude = 40.9675;
	KGRI.longitude = 98.3094;
	[stationList addObject:KGRI];

	VXReportingStation *KGRK = [VXReportingStation new];
	KGRK.stationIdentifier = @"KGRK";
	KGRK.associatedCity = @"FORT HOOD/KILLEEN";
	KGRK.associatedState = @"TX";
	KGRK.latitude = 31.0672;
	KGRK.longitude = 97.8289;
	[stationList addObject:KGRK];

	VXReportingStation *KGRR = [VXReportingStation new];
	KGRR.stationIdentifier = @"KGRR";
	KGRR.associatedCity = @"GRAND RAPIDS";
	KGRR.associatedState = @"MI";
	KGRR.latitude = 42.8808;
	KGRR.longitude = 85.5228;
	[stationList addObject:KGRR];

	VXReportingStation *KGRY = [VXReportingStation new];
	KGRY.stationIdentifier = @"KGRY";
	KGRY.associatedCity = @"GREEN CANYON 338";
	KGRY.associatedState = @"LA";
	KGRY.latitude = 27.6247;
	KGRY.longitude = 90.4411;
	[stationList addObject:KGRY];

	VXReportingStation *KGSB = [VXReportingStation new];
	KGSB.stationIdentifier = @"KGSB";
	KGSB.associatedCity = @"GOLDSBORO";
	KGSB.associatedState = @"NC";
	KGSB.latitude = 35.3392;
	KGSB.longitude = 77.9606;
	[stationList addObject:KGSB];

	VXReportingStation *KGSH = [VXReportingStation new];
	KGSH.stationIdentifier = @"KGSH";
	KGSH.associatedCity = @"GOSHEN";
	KGSH.associatedState = @"IN";
	KGSH.latitude = 41.5269;
	KGSH.longitude = 85.7922;
	[stationList addObject:KGSH];

	VXReportingStation *KGSM = [VXReportingStation new];
	KGSM.stationIdentifier = @"KGSM";
	KGSM.associatedCity = @"SHIP SHOAL 207A";
	KGSM.associatedState = @"OG";
	KGSM.latitude = 28.5333;
	KGSM.longitude = 90.9833;
	[stationList addObject:KGSM];

	VXReportingStation *KGSO = [VXReportingStation new];
	KGSO.stationIdentifier = @"KGSO";
	KGSO.associatedCity = @"GREENSBORO";
	KGSO.associatedState = @"NC";
	KGSO.latitude = 36.0975;
	KGSO.longitude = 79.9372;
	[stationList addObject:KGSO];

	VXReportingStation *KGSP = [VXReportingStation new];
	KGSP.stationIdentifier = @"KGSP";
	KGSP.associatedCity = @"GREER";
	KGSP.associatedState = @"SC";
	KGSP.latitude = 34.8956;
	KGSP.longitude = 82.2186;
	[stationList addObject:KGSP];

	VXReportingStation *KGTB = [VXReportingStation new];
	KGTB.stationIdentifier = @"KGTB";
	KGTB.associatedCity = @"FORT DRUM";
	KGTB.associatedState = @"NY";
	KGTB.latitude = 44.0556;
	KGTB.longitude = 75.7194;
	[stationList addObject:KGTB];

	VXReportingStation *KGTF = [VXReportingStation new];
	KGTF.stationIdentifier = @"KGTF";
	KGTF.associatedCity = @"GREAT FALLS";
	KGTF.associatedState = @"MT";
	KGTF.latitude = 47.4819;
	KGTF.longitude = 111.371;
	[stationList addObject:KGTF];

	VXReportingStation *KGTR = [VXReportingStation new];
	KGTR.stationIdentifier = @"KGTR";
	KGTR.associatedCity = @"COLUMBUS/W POINT/STARKVILL";
	KGTR.associatedState = @"MS";
	KGTR.latitude = 33.4503;
	KGTR.longitude = 88.5911;
	[stationList addObject:KGTR];

	VXReportingStation *KGTU = [VXReportingStation new];
	KGTU.stationIdentifier = @"KGTU";
	KGTU.associatedCity = @"GEORGETOWN";
	KGTU.associatedState = @"TX";
	KGTU.latitude = 30.6786;
	KGTU.longitude = 97.6792;
	[stationList addObject:KGTU];

	VXReportingStation *KGUC = [VXReportingStation new];
	KGUC.stationIdentifier = @"KGUC";
	KGUC.associatedCity = @"GUNNISON";
	KGUC.associatedState = @"CO";
	KGUC.latitude = 38.5339;
	KGUC.longitude = 106.933;
	[stationList addObject:KGUC];

	VXReportingStation *KGUL = [VXReportingStation new];
	KGUL.stationIdentifier = @"KGUL";
	KGUL.associatedCity = @"GUNNISON";
	KGUL.associatedState = @"TX";
	KGUL.latitude = 27.3039;
	KGUL.longitude = 93.5383;
	[stationList addObject:KGUL];

	VXReportingStation *KGUP = [VXReportingStation new];
	KGUP.stationIdentifier = @"KGUP";
	KGUP.associatedCity = @"GALLUP";
	KGUP.associatedState = @"NM";
	KGUP.latitude = 35.5108;
	KGUP.longitude = 108.789;
	[stationList addObject:KGUP];

	VXReportingStation *KGUR = [VXReportingStation new];
	KGUR.stationIdentifier = @"KGUR";
	KGUR.associatedCity = @"GUERNSEY";
	KGUR.associatedState = @"WY";
	KGUR.latitude = 42.2594;
	KGUR.longitude = 104.728;
	[stationList addObject:KGUR];

	VXReportingStation *KGUS = [VXReportingStation new];
	KGUS.stationIdentifier = @"KGUS";
	KGUS.associatedCity = @"PERU";
	KGUS.associatedState = @"IN";
	KGUS.latitude = 40.6481;
	KGUS.longitude = 86.1519;
	[stationList addObject:KGUS];

	VXReportingStation *KGUY = [VXReportingStation new];
	KGUY.stationIdentifier = @"KGUY";
	KGUY.associatedCity = @"GUYMON";
	KGUY.associatedState = @"OK";
	KGUY.latitude = 36.685;
	KGUY.longitude = 101.508;
	[stationList addObject:KGUY];

	VXReportingStation *KGVE = [VXReportingStation new];
	KGVE.stationIdentifier = @"KGVE";
	KGVE.associatedCity = @"GORDONSVILLE";
	KGVE.associatedState = @"VA";
	KGVE.latitude = 38.1567;
	KGVE.longitude = 78.1656;
	[stationList addObject:KGVE];

	VXReportingStation *KGVL = [VXReportingStation new];
	KGVL.stationIdentifier = @"KGVL";
	KGVL.associatedCity = @"GAINESVILLE";
	KGVL.associatedState = @"GA";
	KGVL.latitude = 34.2728;
	KGVL.longitude = 83.8267;
	[stationList addObject:KGVL];

	VXReportingStation *KGVT = [VXReportingStation new];
	KGVT.stationIdentifier = @"KGVT";
	KGVT.associatedCity = @"GREENVILLE";
	KGVT.associatedState = @"TX";
	KGVT.latitude = 33.0678;
	KGVT.longitude = 96.0653;
	[stationList addObject:KGVT];

	VXReportingStation *KGVX = [VXReportingStation new];
	KGVX.stationIdentifier = @"KGVX";
	KGVX.associatedCity = @"GALVESTON 424";
	KGVX.associatedState = @"TX";
	KGVX.latitude = 28.5767;
	KGVX.longitude = 94.9767;
	[stationList addObject:KGVX];

	VXReportingStation *KGWB = [VXReportingStation new];
	KGWB.stationIdentifier = @"KGWB";
	KGWB.associatedCity = @"AUBURN";
	KGWB.associatedState = @"IN";
	KGWB.latitude = 41.3069;
	KGWB.longitude = 85.0642;
	[stationList addObject:KGWB];

	VXReportingStation *KGWO = [VXReportingStation new];
	KGWO.stationIdentifier = @"KGWO";
	KGWO.associatedCity = @"GREENWOOD";
	KGWO.associatedState = @"MS";
	KGWO.latitude = 33.4942;
	KGWO.longitude = 90.0844;
	[stationList addObject:KGWO];

	VXReportingStation *KGXA = [VXReportingStation new];
	KGXA.stationIdentifier = @"KGXA";
	KGXA.associatedCity = @"PALMDALE";
	KGXA.associatedState = @"CA";
	KGXA.latitude = 34.5664;
	KGXA.longitude = 117.67;
	[stationList addObject:KGXA];

	VXReportingStation *KGXF = [VXReportingStation new];
	KGXF.stationIdentifier = @"KGXF";
	KGXF.associatedCity = @"GILA BEND";
	KGXF.associatedState = @"AZ";
	KGXF.latitude = 32.8875;
	KGXF.longitude = 112.72;
	[stationList addObject:KGXF];

	VXReportingStation *KGXY = [VXReportingStation new];
	KGXY.stationIdentifier = @"KGXY";
	KGXY.associatedCity = @"GREELEY";
	KGXY.associatedState = @"CO";
	KGXY.latitude = 40.4372;
	KGXY.longitude = 104.633;
	[stationList addObject:KGXY];

	VXReportingStation *KGYB = [VXReportingStation new];
	KGYB.stationIdentifier = @"KGYB";
	KGYB.associatedCity = @"GIDDINGS";
	KGYB.associatedState = @"TX";
	KGYB.latitude = 30.1692;
	KGYB.longitude = 96.98;
	[stationList addObject:KGYB];

	VXReportingStation *KGYH = [VXReportingStation new];
	KGYH.stationIdentifier = @"KGYH";
	KGYH.associatedCity = @"GREENVILLE";
	KGYH.associatedState = @"SC";
	KGYH.latitude = 34.7581;
	KGYH.longitude = 82.3764;
	[stationList addObject:KGYH];

	VXReportingStation *KGYI = [VXReportingStation new];
	KGYI.stationIdentifier = @"KGYI";
	KGYI.associatedCity = @"SHERMAN/DENISON";
	KGYI.associatedState = @"TX";
	KGYI.latitude = 33.7139;
	KGYI.longitude = 96.6736;
	[stationList addObject:KGYI];

	VXReportingStation *KGYL = [VXReportingStation new];
	KGYL.stationIdentifier = @"KGYL";
	KGYL.associatedCity = @"GLENCOE";
	KGYL.associatedState = @"MN";
	KGYL.latitude = 44.7558;
	KGYL.longitude = 94.0811;
	[stationList addObject:KGYL];

	VXReportingStation *KGYR = [VXReportingStation new];
	KGYR.stationIdentifier = @"KGYR";
	KGYR.associatedCity = @"GOODYEAR";
	KGYR.associatedState = @"AZ";
	KGYR.latitude = 33.4228;
	KGYR.longitude = 112.376;
	[stationList addObject:KGYR];

	VXReportingStation *KGYY = [VXReportingStation new];
	KGYY.stationIdentifier = @"KGYY";
	KGYY.associatedCity = @"GARY";
	KGYY.associatedState = @"IN";
	KGYY.latitude = 41.6161;
	KGYY.longitude = 87.4128;
	[stationList addObject:KGYY];

	VXReportingStation *KGZH = [VXReportingStation new];
	KGZH.stationIdentifier = @"KGZH";
	KGZH.associatedCity = @"EVERGREEN";
	KGZH.associatedState = @"AL";
	KGZH.latitude = 31.4156;
	KGZH.longitude = 87.0439;
	[stationList addObject:KGZH];

	VXReportingStation *KGZL = [VXReportingStation new];
	KGZL.stationIdentifier = @"KGZL";
	KGZL.associatedCity = @"STIGLER";
	KGZL.associatedState = @"OK";
	KGZL.latitude = 35.2914;
	KGZL.longitude = 95.0956;
	[stationList addObject:KGZL];

	VXReportingStation *KH02 = [VXReportingStation new];
	KH02.stationIdentifier = @"KH02";
	KH02.associatedCity = @"HIGH ISLAND 334A";
	KH02.associatedState = @"OG";
	KH02.latitude = 28.1;
	KH02.longitude = 93.6667;
	[stationList addObject:KH02];

	VXReportingStation *KH08 = [VXReportingStation new];
	KH08.stationIdentifier = @"KH08";
	KH08.associatedCity = @"HIGH ISLAND 264C";
	KH08.associatedState = @"OG";
	KH08.latitude = 28.4667;
	KH08.longitude = 93.7333;
	[stationList addObject:KH08];

	VXReportingStation *KHAF = [VXReportingStation new];
	KHAF.stationIdentifier = @"KHAF";
	KHAF.associatedCity = @"HALF MOON BAY";
	KHAF.associatedState = @"CA";
	KHAF.latitude = 37.5133;
	KHAF.longitude = 122.501;
	[stationList addObject:KHAF];

	VXReportingStation *KHAI = [VXReportingStation new];
	KHAI.stationIdentifier = @"KHAI";
	KHAI.associatedCity = @"THREE RIVERS";
	KHAI.associatedState = @"MI";
	KHAI.latitude = 41.9597;
	KHAI.longitude = 85.5933;
	[stationList addObject:KHAI];

	VXReportingStation *KHAO = [VXReportingStation new];
	KHAO.stationIdentifier = @"KHAO";
	KHAO.associatedCity = @"HAMILTON";
	KHAO.associatedState = @"OH";
	KHAO.latitude = 39.3636;
	KHAO.longitude = 84.5219;
	[stationList addObject:KHAO];

	VXReportingStation *KHAT = [VXReportingStation new];
	KHAT.stationIdentifier = @"KHAT";
	KHAT.associatedCity = @"HATTERAS";
	KHAT.associatedState = @"NC";
	KHAT.latitude = 35.2667;
	KHAT.longitude = 75.5494;
	[stationList addObject:KHAT];

	VXReportingStation *KHBG = [VXReportingStation new];
	KHBG.stationIdentifier = @"KHBG";
	KHBG.associatedCity = @"HATTIESBURG";
	KHBG.associatedState = @"MS";
	KHBG.latitude = 31.2647;
	KHBG.longitude = 89.2528;
	[stationList addObject:KHBG];

	VXReportingStation *KHBI = [VXReportingStation new];
	KHBI.stationIdentifier = @"KHBI";
	KHBI.associatedCity = @"ASHEBORO";
	KHBI.associatedState = @"NC";
	KHBI.latitude = 35.6544;
	KHBI.longitude = 79.8947;
	[stationList addObject:KHBI];

	VXReportingStation *KHBR = [VXReportingStation new];
	KHBR.stationIdentifier = @"KHBR";
	KHBR.associatedCity = @"HOBART";
	KHBR.associatedState = @"OK";
	KHBR.latitude = 34.9911;
	KHBR.longitude = 99.0511;
	[stationList addObject:KHBR];

	VXReportingStation *KHBV = [VXReportingStation new];
	KHBV.stationIdentifier = @"KHBV";
	KHBV.associatedCity = @"HEBBRONVILLE";
	KHBV.associatedState = @"TX";
	KHBV.latitude = 27.3494;
	KHBV.longitude = 98.7369;
	[stationList addObject:KHBV];

	VXReportingStation *KHCD = [VXReportingStation new];
	KHCD.stationIdentifier = @"KHCD";
	KHCD.associatedCity = @"HUTCHINSON";
	KHCD.associatedState = @"MN";
	KHCD.latitude = 44.8597;
	KHCD.longitude = 94.3825;
	[stationList addObject:KHCD];

	VXReportingStation *KHCO = [VXReportingStation new];
	KHCO.stationIdentifier = @"KHCO";
	KHCO.associatedCity = @"HALLOCK";
	KHCO.associatedState = @"MN";
	KHCO.latitude = 48.7525;
	KHCO.longitude = 96.9428;
	[stationList addObject:KHCO];

	VXReportingStation *KHDC = [VXReportingStation new];
	KHDC.stationIdentifier = @"KHDC";
	KHDC.associatedCity = @"HAMMOND";
	KHDC.associatedState = @"LA";
	KHDC.latitude = 30.5217;
	KHDC.longitude = 90.4183;
	[stationList addObject:KHDC];

	VXReportingStation *KHDE = [VXReportingStation new];
	KHDE.stationIdentifier = @"KHDE";
	KHDE.associatedCity = @"HOLDREGE";
	KHDE.associatedState = @"NE";
	KHDE.latitude = 40.4525;
	KHDE.longitude = 99.3372;
	[stationList addObject:KHDE];

	VXReportingStation *KHDN = [VXReportingStation new];
	KHDN.stationIdentifier = @"KHDN";
	KHDN.associatedCity = @"HAYDEN";
	KHDN.associatedState = @"CO";
	KHDN.latitude = 40.4811;
	KHDN.longitude = 107.218;
	[stationList addObject:KHDN];

	VXReportingStation *KHDO = [VXReportingStation new];
	KHDO.stationIdentifier = @"KHDO";
	KHDO.associatedCity = @"HONDO";
	KHDO.associatedState = @"TX";
	KHDO.latitude = 29.3594;
	KHDO.longitude = 99.1767;
	[stationList addObject:KHDO];

	VXReportingStation *KHEF = [VXReportingStation new];
	KHEF.stationIdentifier = @"KHEF";
	KHEF.associatedCity = @"WASHINGTON";
	KHEF.associatedState = @"DC";
	KHEF.latitude = 38.7214;
	KHEF.longitude = 77.5153;
	[stationList addObject:KHEF];

	VXReportingStation *KHEI = [VXReportingStation new];
	KHEI.stationIdentifier = @"KHEI";
	KHEI.associatedCity = @"HETTINGER";
	KHEI.associatedState = @"ND";
	KHEI.latitude = 46.0147;
	KHEI.longitude = 102.656;
	[stationList addObject:KHEI];

	VXReportingStation *KHEZ = [VXReportingStation new];
	KHEZ.stationIdentifier = @"KHEZ";
	KHEZ.associatedCity = @"NATCHEZ";
	KHEZ.associatedState = @"MS";
	KHEZ.latitude = 31.6136;
	KHEZ.longitude = 91.2972;
	[stationList addObject:KHEZ];

	VXReportingStation *KHFD = [VXReportingStation new];
	KHFD.stationIdentifier = @"KHFD";
	KHFD.associatedCity = @"HARTFORD";
	KHFD.associatedState = @"CT";
	KHFD.latitude = 41.7367;
	KHFD.longitude = 72.6494;
	[stationList addObject:KHFD];

	VXReportingStation *KHFJ = [VXReportingStation new];
	KHFJ.stationIdentifier = @"KHFJ";
	KHFJ.associatedCity = @"MONETT";
	KHFJ.associatedState = @"MO";
	KHFJ.latitude = 36.9061;
	KHFJ.longitude = 94.0125;
	[stationList addObject:KHFJ];

	VXReportingStation *KHGR = [VXReportingStation new];
	KHGR.stationIdentifier = @"KHGR";
	KHGR.associatedCity = @"HAGERSTOWN";
	KHGR.associatedState = @"MD";
	KHGR.latitude = 39.7078;
	KHGR.longitude = 77.7294;
	[stationList addObject:KHGR];

	VXReportingStation *KHGT = [VXReportingStation new];
	KHGT.stationIdentifier = @"KHGT";
	KHGT.associatedCity = @"FORT HUNTER LIGGET JOLON";
	KHGT.associatedState = @"CA";
	KHGT.latitude = 35.9933;
	KHGT.longitude = 121.237;
	[stationList addObject:KHGT];

	VXReportingStation *KHHF = [VXReportingStation new];
	KHHF.stationIdentifier = @"KHHF";
	KHHF.associatedCity = @"CANADIAN";
	KHHF.associatedState = @"TX";
	KHHF.latitude = 35.8953;
	KHHF.longitude = 100.404;
	[stationList addObject:KHHF];

	VXReportingStation *KHHG = [VXReportingStation new];
	KHHG.stationIdentifier = @"KHHG";
	KHHG.associatedCity = @"HUNTINGTON";
	KHHG.associatedState = @"IN";
	KHHG.latitude = 40.8542;
	KHHG.longitude = 85.4542;
	[stationList addObject:KHHG];

	VXReportingStation *KHHR = [VXReportingStation new];
	KHHR.stationIdentifier = @"KHHR";
	KHHR.associatedCity = @"HAWTHORNE";
	KHHR.associatedState = @"CA";
	KHHR.latitude = 33.9228;
	KHHR.longitude = 118.335;
	[stationList addObject:KHHR];

	VXReportingStation *KHHV = [VXReportingStation new];
	KHHV.stationIdentifier = @"KHHV";
	KHHV.associatedCity = @"HOOVER DIANA";
	KHHV.associatedState = @"TX";
	KHHV.latitude = 26.9392;
	KHHV.longitude = 94.6886;
	[stationList addObject:KHHV];

	VXReportingStation *KHHW = [VXReportingStation new];
	KHHW.stationIdentifier = @"KHHW";
	KHHW.associatedCity = @"HUGO";
	KHHW.associatedState = @"OK";
	KHHW.latitude = 34.0336;
	KHHW.longitude = 95.5419;
	[stationList addObject:KHHW];

	VXReportingStation *KHIB = [VXReportingStation new];
	KHIB.stationIdentifier = @"KHIB";
	KHIB.associatedCity = @"HIBBING";
	KHIB.associatedState = @"MN";
	KHIB.latitude = 47.3864;
	KHIB.longitude = 92.8389;
	[stationList addObject:KHIB];

	VXReportingStation *KHIE = [VXReportingStation new];
	KHIE.stationIdentifier = @"KHIE";
	KHIE.associatedCity = @"WHITEFIELD";
	KHIE.associatedState = @"NH";
	KHIE.latitude = 44.3675;
	KHIE.longitude = 71.5444;
	[stationList addObject:KHIE];

	VXReportingStation *KHIF = [VXReportingStation new];
	KHIF.stationIdentifier = @"KHIF";
	KHIF.associatedCity = @"OGDEN";
	KHIF.associatedState = @"UT";
	KHIF.latitude = 41.1239;
	KHIF.longitude = 111.973;
	[stationList addObject:KHIF];

	VXReportingStation *KHII = [VXReportingStation new];
	KHII.stationIdentifier = @"KHII";
	KHII.associatedCity = @"LAKE HAVASU CITY";
	KHII.associatedState = @"AZ";
	KHII.latitude = 34.5711;
	KHII.longitude = 114.358;
	[stationList addObject:KHII];

	VXReportingStation *KHIO = [VXReportingStation new];
	KHIO.stationIdentifier = @"KHIO";
	KHIO.associatedCity = @"PORTLAND";
	KHIO.associatedState = @"OR";
	KHIO.latitude = 45.5403;
	KHIO.longitude = 122.95;
	[stationList addObject:KHIO];

	VXReportingStation *KHJH = [VXReportingStation new];
	KHJH.stationIdentifier = @"KHJH";
	KHJH.associatedCity = @"HEBRON";
	KHJH.associatedState = @"NE";
	KHJH.latitude = 40.1522;
	KHJH.longitude = 97.5869;
	[stationList addObject:KHJH];

	VXReportingStation *KHJO = [VXReportingStation new];
	KHJO.stationIdentifier = @"KHJO";
	KHJO.associatedCity = @"HANFORD";
	KHJO.associatedState = @"CA";
	KHJO.latitude = 36.3167;
	KHJO.longitude = 119.627;
	[stationList addObject:KHJO];

	VXReportingStation *KHKA = [VXReportingStation new];
	KHKA.stationIdentifier = @"KHKA";
	KHKA.associatedCity = @"BLYTHEVILLE";
	KHKA.associatedState = @"AR";
	KHKA.latitude = 35.9403;
	KHKA.longitude = 89.8306;
	[stationList addObject:KHKA];

	VXReportingStation *KHKS = [VXReportingStation new];
	KHKS.stationIdentifier = @"KHKS";
	KHKS.associatedCity = @"JACKSON";
	KHKS.associatedState = @"MS";
	KHKS.latitude = 32.3347;
	KHKS.longitude = 90.2225;
	[stationList addObject:KHKS];

	VXReportingStation *KHKY = [VXReportingStation new];
	KHKY.stationIdentifier = @"KHKY";
	KHKY.associatedCity = @"HICKORY";
	KHKY.associatedState = @"NC";
	KHKY.latitude = 35.7411;
	KHKY.longitude = 81.3894;
	[stationList addObject:KHKY];

	VXReportingStation *KHLC = [VXReportingStation new];
	KHLC.stationIdentifier = @"KHLC";
	KHLC.associatedCity = @"HILL CITY";
	KHLC.associatedState = @"KS";
	KHLC.latitude = 39.3786;
	KHLC.longitude = 99.8314;
	[stationList addObject:KHLC];

	VXReportingStation *KHLG = [VXReportingStation new];
	KHLG.stationIdentifier = @"KHLG";
	KHLG.associatedCity = @"WHEELING";
	KHLG.associatedState = @"WV";
	KHLG.latitude = 40.175;
	KHLG.longitude = 80.6461;
	[stationList addObject:KHLG];

	VXReportingStation *KHLN = [VXReportingStation new];
	KHLN.stationIdentifier = @"KHLN";
	KHLN.associatedCity = @"HELENA";
	KHLN.associatedState = @"MT";
	KHLN.latitude = 46.6067;
	KHLN.longitude = 111.983;
	[stationList addObject:KHLN];

	VXReportingStation *KHLX = [VXReportingStation new];
	KHLX.stationIdentifier = @"KHLX";
	KHLX.associatedCity = @"GALAX HILLSVILLE";
	KHLX.associatedState = @"VA";
	KHLX.latitude = 36.7661;
	KHLX.longitude = 80.8233;
	[stationList addObject:KHLX];

	VXReportingStation *KHMN = [VXReportingStation new];
	KHMN.stationIdentifier = @"KHMN";
	KHMN.associatedCity = @"ALAMOGORDO";
	KHMN.associatedState = @"NM";
	KHMN.latitude = 32.8525;
	KHMN.longitude = 106.106;
	[stationList addObject:KHMN];

	VXReportingStation *KHMS = [VXReportingStation new];
	KHMS.stationIdentifier = @"KHMS";
	KHMS.associatedCity = @"HANFORD";
	KHMS.associatedState = @"WA";
	KHMS.latitude = 46.5664;
	KHMS.longitude = 119.601;
	[stationList addObject:KHMS];

	VXReportingStation *KHMZ = [VXReportingStation new];
	KHMZ.stationIdentifier = @"KHMZ";
	KHMZ.associatedCity = @"BEDFORD";
	KHMZ.associatedState = @"PA";
	KHMZ.latitude = 40.0853;
	KHMZ.longitude = 78.5119;
	[stationList addObject:KHMZ];

	VXReportingStation *KHNB = [VXReportingStation new];
	KHNB.stationIdentifier = @"KHNB";
	KHNB.associatedCity = @"HUNTINGBURG";
	KHNB.associatedState = @"IN";
	KHNB.latitude = 38.2489;
	KHNB.longitude = 86.9536;
	[stationList addObject:KHNB];

	VXReportingStation *KHND = [VXReportingStation new];
	KHND.stationIdentifier = @"KHND";
	KHND.associatedCity = @"LAS VEGAS";
	KHND.associatedState = @"NV";
	KHND.latitude = 35.9728;
	KHND.longitude = 115.134;
	[stationList addObject:KHND];

	VXReportingStation *KHNR = [VXReportingStation new];
	KHNR.stationIdentifier = @"KHNR";
	KHNR.associatedCity = @"HARLAN";
	KHNR.associatedState = @"IA";
	KHNR.latitude = 41.5833;
	KHNR.longitude = 95.3353;
	[stationList addObject:KHNR];

	VXReportingStation *KHNZ = [VXReportingStation new];
	KHNZ.stationIdentifier = @"KHNZ";
	KHNZ.associatedCity = @"OXFORD";
	KHNZ.associatedState = @"NC";
	KHNZ.latitude = 36.3614;
	KHNZ.longitude = 78.5289;
	[stationList addObject:KHNZ];

	VXReportingStation *KHOB = [VXReportingStation new];
	KHOB.stationIdentifier = @"KHOB";
	KHOB.associatedCity = @"HOBBS";
	KHOB.associatedState = @"NM";
	KHOB.latitude = 32.6875;
	KHOB.longitude = 103.217;
	[stationList addObject:KHOB];

	VXReportingStation *KHOE = [VXReportingStation new];
	KHOE.stationIdentifier = @"KHOE";
	KHOE.associatedCity = @"HOMERVILLE";
	KHOE.associatedState = @"GA";
	KHOE.latitude = 31.0558;
	KHOE.longitude = 82.7739;
	[stationList addObject:KHOE];

	VXReportingStation *KHON = [VXReportingStation new];
	KHON.stationIdentifier = @"KHON";
	KHON.associatedCity = @"HURON";
	KHON.associatedState = @"SD";
	KHON.latitude = 44.385;
	KHON.longitude = 98.2283;
	[stationList addObject:KHON];

	VXReportingStation *KHOP = [VXReportingStation new];
	KHOP.stationIdentifier = @"KHOP";
	KHOP.associatedCity = @"FORT CAMPBELL/HOPKINSVILLE";
	KHOP.associatedState = @"KY";
	KHOP.latitude = 36.6683;
	KHOP.longitude = 87.4961;
	[stationList addObject:KHOP];

	VXReportingStation *KHOT = [VXReportingStation new];
	KHOT.stationIdentifier = @"KHOT";
	KHOT.associatedCity = @"HOT SPRINGS";
	KHOT.associatedState = @"AR";
	KHOT.latitude = 34.4778;
	KHOT.longitude = 93.0961;
	[stationList addObject:KHOT];

	VXReportingStation *KHOU = [VXReportingStation new];
	KHOU.stationIdentifier = @"KHOU";
	KHOU.associatedCity = @"HOUSTON";
	KHOU.associatedState = @"TX";
	KHOU.latitude = 29.6453;
	KHOU.longitude = 95.2789;
	[stationList addObject:KHOU];

	VXReportingStation *KHPN = [VXReportingStation new];
	KHPN.stationIdentifier = @"KHPN";
	KHPN.associatedCity = @"WHITE PLAINS";
	KHPN.associatedState = @"NY";
	KHPN.latitude = 41.0669;
	KHPN.longitude = 73.7075;
	[stationList addObject:KHPN];

	VXReportingStation *KHQI = [VXReportingStation new];
	KHQI.stationIdentifier = @"KHQI";
	KHQI.associatedCity = @"HIGH ISLAND 376";
	KHQI.associatedState = @"TX";
	KHQI.latitude = 27.9619;
	KHQI.longitude = 93.6708;
	[stationList addObject:KHQI];

	VXReportingStation *KHQM = [VXReportingStation new];
	KHQM.stationIdentifier = @"KHQM";
	KHQM.associatedCity = @"HOQUIAM";
	KHQM.associatedState = @"WA";
	KHQM.latitude = 46.9711;
	KHQM.longitude = 123.936;
	[stationList addObject:KHQM];

	VXReportingStation *KHQU = [VXReportingStation new];
	KHQU.stationIdentifier = @"KHQU";
	KHQU.associatedCity = @"THOMSON";
	KHQU.associatedState = @"GA";
	KHQU.latitude = 33.5294;
	KHQU.longitude = 82.5164;
	[stationList addObject:KHQU];

	VXReportingStation *KHQZ = [VXReportingStation new];
	KHQZ.stationIdentifier = @"KHQZ";
	KHQZ.associatedCity = @"MESQUITE";
	KHQZ.associatedState = @"TX";
	KHQZ.latitude = 32.7469;
	KHQZ.longitude = 96.5303;
	[stationList addObject:KHQZ];

	VXReportingStation *KHRI = [VXReportingStation new];
	KHRI.stationIdentifier = @"KHRI";
	KHRI.associatedCity = @"HERMISTON";
	KHRI.associatedState = @"OR";
	KHRI.latitude = 45.8258;
	KHRI.longitude = 119.261;
	[stationList addObject:KHRI];

	VXReportingStation *KHRJ = [VXReportingStation new];
	KHRJ.stationIdentifier = @"KHRJ";
	KHRJ.associatedCity = @"ERWIN";
	KHRJ.associatedState = @"NC";
	KHRJ.latitude = 35.3792;
	KHRJ.longitude = 78.7328;
	[stationList addObject:KHRJ];

	VXReportingStation *KHRL = [VXReportingStation new];
	KHRL.stationIdentifier = @"KHRL";
	KHRL.associatedCity = @"HARLINGEN";
	KHRL.associatedState = @"TX";
	KHRL.latitude = 26.2283;
	KHRL.longitude = 97.6542;
	[stationList addObject:KHRL];

	VXReportingStation *KHRO = [VXReportingStation new];
	KHRO.stationIdentifier = @"KHRO";
	KHRO.associatedCity = @"HARRISON";
	KHRO.associatedState = @"AR";
	KHRO.latitude = 36.2614;
	KHRO.longitude = 93.1547;
	[stationList addObject:KHRO];

	VXReportingStation *KHRT = [VXReportingStation new];
	KHRT.stationIdentifier = @"KHRT";
	KHRT.associatedCity = @"MARY ESTHER";
	KHRT.associatedState = @"FL";
	KHRT.latitude = 30.4278;
	KHRT.longitude = 86.6892;
	[stationList addObject:KHRT];

	VXReportingStation *KHRX = [VXReportingStation new];
	KHRX.stationIdentifier = @"KHRX";
	KHRX.associatedCity = @"HEREFORD";
	KHRX.associatedState = @"TX";
	KHRX.latitude = 34.8575;
	KHRX.longitude = 102.326;
	[stationList addObject:KHRX];

	VXReportingStation *KHSA = [VXReportingStation new];
	KHSA.stationIdentifier = @"KHSA";
	KHSA.associatedCity = @"BAY ST LOUIS";
	KHSA.associatedState = @"MS";
	KHSA.latitude = 30.3678;
	KHSA.longitude = 89.4544;
	[stationList addObject:KHSA];

	VXReportingStation *KHSB = [VXReportingStation new];
	KHSB.stationIdentifier = @"KHSB";
	KHSB.associatedCity = @"HARRISBURG";
	KHSB.associatedState = @"IL";
	KHSB.latitude = 37.8114;
	KHSB.longitude = 88.5489;
	[stationList addObject:KHSB];

	VXReportingStation *KHSE = [VXReportingStation new];
	KHSE.stationIdentifier = @"KHSE";
	KHSE.associatedCity = @"HATTERAS";
	KHSE.associatedState = @"NC";
	KHSE.latitude = 35.2328;
	KHSE.longitude = 75.6178;
	[stationList addObject:KHSE];

	VXReportingStation *KHSI = [VXReportingStation new];
	KHSI.stationIdentifier = @"KHSI";
	KHSI.associatedCity = @"HASTINGS";
	KHSI.associatedState = @"NE";
	KHSI.latitude = 40.605;
	KHSI.longitude = 98.4278;
	[stationList addObject:KHSI];

	VXReportingStation *KHSP = [VXReportingStation new];
	KHSP.stationIdentifier = @"KHSP";
	KHSP.associatedCity = @"HOT SPRINGS";
	KHSP.associatedState = @"VA";
	KHSP.latitude = 37.9514;
	KHSP.longitude = 79.8339;
	[stationList addObject:KHSP];

	VXReportingStation *KHST = [VXReportingStation new];
	KHST.stationIdentifier = @"KHST";
	KHST.associatedCity = @"HOMESTEAD";
	KHST.associatedState = @"FL";
	KHST.latitude = 25.4883;
	KHST.longitude = 80.3836;
	[stationList addObject:KHST];

	VXReportingStation *KHSV = [VXReportingStation new];
	KHSV.stationIdentifier = @"KHSV";
	KHSV.associatedCity = @"HUNTSVILLE";
	KHSV.associatedState = @"AL";
	KHSV.latitude = 34.6369;
	KHSV.longitude = 86.775;
	[stationList addObject:KHSV];

	VXReportingStation *KHTL = [VXReportingStation new];
	KHTL.stationIdentifier = @"KHTL";
	KHTL.associatedCity = @"HOUGHTON LAKE";
	KHTL.associatedState = @"MI";
	KHTL.latitude = 44.3597;
	KHTL.longitude = 84.6711;
	[stationList addObject:KHTL];

	VXReportingStation *KHTS = [VXReportingStation new];
	KHTS.stationIdentifier = @"KHTS";
	KHTS.associatedCity = @"HUNTINGTON";
	KHTS.associatedState = @"WV";
	KHTS.latitude = 38.3667;
	KHTS.longitude = 82.5578;
	[stationList addObject:KHTS];

	VXReportingStation *KHUF = [VXReportingStation new];
	KHUF.stationIdentifier = @"KHUF";
	KHUF.associatedCity = @"TERRE HAUTE";
	KHUF.associatedState = @"IN";
	KHUF.latitude = 39.4514;
	KHUF.longitude = 87.3075;
	[stationList addObject:KHUF];

	VXReportingStation *KHUL = [VXReportingStation new];
	KHUL.stationIdentifier = @"KHUL";
	KHUL.associatedCity = @"HOULTON";
	KHUL.associatedState = @"ME";
	KHUL.latitude = 46.1231;
	KHUL.longitude = 67.7919;
	[stationList addObject:KHUL];

	VXReportingStation *KHUM = [VXReportingStation new];
	KHUM.stationIdentifier = @"KHUM";
	KHUM.associatedCity = @"HOUMA";
	KHUM.associatedState = @"LA";
	KHUM.latitude = 29.5664;
	KHUM.longitude = 90.6603;
	[stationList addObject:KHUM];

	VXReportingStation *KHUT = [VXReportingStation new];
	KHUT.stationIdentifier = @"KHUT";
	KHUT.associatedCity = @"HUTCHINSON";
	KHUT.associatedState = @"KS";
	KHUT.latitude = 38.0653;
	KHUT.longitude = 97.8606;
	[stationList addObject:KHUT];

	VXReportingStation *KHVE = [VXReportingStation new];
	KHVE.stationIdentifier = @"KHVE";
	KHVE.associatedCity = @"HANKSVILLE";
	KHVE.associatedState = @"UT";
	KHVE.latitude = 38.4178;
	KHVE.longitude = 110.704;
	[stationList addObject:KHVE];

	VXReportingStation *KHVN = [VXReportingStation new];
	KHVN.stationIdentifier = @"KHVN";
	KHVN.associatedCity = @"NEW HAVEN";
	KHVN.associatedState = @"CT";
	KHVN.latitude = 41.2636;
	KHVN.longitude = 72.8867;
	[stationList addObject:KHVN];

	VXReportingStation *KHVR = [VXReportingStation new];
	KHVR.stationIdentifier = @"KHVR";
	KHVR.associatedCity = @"HAVRE";
	KHVR.associatedState = @"MT";
	KHVR.latitude = 48.5428;
	KHVR.longitude = 109.762;
	[stationList addObject:KHVR];

	VXReportingStation *KHVS = [VXReportingStation new];
	KHVS.stationIdentifier = @"KHVS";
	KHVS.associatedCity = @"HARTSVILLE";
	KHVS.associatedState = @"SC";
	KHVS.latitude = 34.4031;
	KHVS.longitude = 80.1192;
	[stationList addObject:KHVS];

	VXReportingStation *KHWD = [VXReportingStation new];
	KHWD.stationIdentifier = @"KHWD";
	KHWD.associatedCity = @"HAYWARD";
	KHWD.associatedState = @"CA";
	KHWD.latitude = 37.6592;
	KHWD.longitude = 122.122;
	[stationList addObject:KHWD];

	VXReportingStation *KHWO = [VXReportingStation new];
	KHWO.stationIdentifier = @"KHWO";
	KHWO.associatedCity = @"HOLLYWOOD";
	KHWO.associatedState = @"FL";
	KHWO.latitude = 26.0014;
	KHWO.longitude = 80.2403;
	[stationList addObject:KHWO];

	VXReportingStation *KHWV = [VXReportingStation new];
	KHWV.stationIdentifier = @"KHWV";
	KHWV.associatedCity = @"SHIRLEY";
	KHWV.associatedState = @"NY";
	KHWV.latitude = 40.8219;
	KHWV.longitude = 72.8667;
	[stationList addObject:KHWV];

	VXReportingStation *KHWY = [VXReportingStation new];
	KHWY.stationIdentifier = @"KHWY";
	KHWY.associatedCity = @"WARRENTON";
	KHWY.associatedState = @"VA";
	KHWY.latitude = 38.5875;
	KHWY.longitude = 77.715;
	[stationList addObject:KHWY];

	VXReportingStation *KHXD = [VXReportingStation new];
	KHXD.stationIdentifier = @"KHXD";
	KHXD.associatedCity = @"HILTON HEAD ISLAND";
	KHXD.associatedState = @"SC";
	KHXD.latitude = 32.2242;
	KHXD.longitude = 80.6972;
	[stationList addObject:KHXD];

	VXReportingStation *KHYA = [VXReportingStation new];
	KHYA.stationIdentifier = @"KHYA";
	KHYA.associatedCity = @"HYANNIS";
	KHYA.associatedState = @"MA";
	KHYA.latitude = 41.6692;
	KHYA.longitude = 70.2803;
	[stationList addObject:KHYA];

	VXReportingStation *KHYI = [VXReportingStation new];
	KHYI.stationIdentifier = @"KHYI";
	KHYI.associatedCity = @"SAN MARCOS";
	KHYI.associatedState = @"TX";
	KHYI.latitude = 29.8936;
	KHYI.longitude = 97.8647;
	[stationList addObject:KHYI];

	VXReportingStation *KHYR = [VXReportingStation new];
	KHYR.stationIdentifier = @"KHYR";
	KHYR.associatedCity = @"HAYWARD";
	KHYR.associatedState = @"WI";
	KHYR.latitude = 46.025;
	KHYR.longitude = 91.4442;
	[stationList addObject:KHYR];

	VXReportingStation *KHYS = [VXReportingStation new];
	KHYS.stationIdentifier = @"KHYS";
	KHYS.associatedCity = @"HAYS";
	KHYS.associatedState = @"KS";
	KHYS.latitude = 38.8419;
	KHYS.longitude = 99.2731;
	[stationList addObject:KHYS];

	VXReportingStation *KHYW = [VXReportingStation new];
	KHYW.stationIdentifier = @"KHYW";
	KHYW.associatedCity = @"CONWAY";
	KHYW.associatedState = @"SC";
	KHYW.latitude = 33.8283;
	KHYW.longitude = 79.1219;
	[stationList addObject:KHYW];

	VXReportingStation *KHYX = [VXReportingStation new];
	KHYX.stationIdentifier = @"KHYX";
	KHYX.associatedCity = @"SAGINAW";
	KHYX.associatedState = @"MI";
	KHYX.latitude = 43.4333;
	KHYX.longitude = 83.8622;
	[stationList addObject:KHYX];

	VXReportingStation *KHZR = [VXReportingStation new];
	KHZR.stationIdentifier = @"KHZR";
	KHZR.associatedCity = @"NEW ROADS";
	KHZR.associatedState = @"LA";
	KHZR.latitude = 30.7181;
	KHZR.longitude = 91.4786;
	[stationList addObject:KHZR];

	VXReportingStation *KHZX = [VXReportingStation new];
	KHZX.stationIdentifier = @"KHZX";
	KHZX.associatedCity = @"MC GREGOR";
	KHZX.associatedState = @"MN";
	KHZX.latitude = 46.6186;
	KHZX.longitude = 93.3097;
	[stationList addObject:KHZX];

	VXReportingStation *KHZY = [VXReportingStation new];
	KHZY.stationIdentifier = @"KHZY";
	KHZY.associatedCity = @"ASHTABULA";
	KHZY.associatedState = @"OH";
	KHZY.latitude = 41.7778;
	KHZY.longitude = 80.6953;
	[stationList addObject:KHZY];

	VXReportingStation *KI16 = [VXReportingStation new];
	KI16.stationIdentifier = @"KI16";
	KI16.associatedCity = @"PINEVILLE";
	KI16.associatedState = @"WV";
	KI16.latitude = 37.6003;
	KI16.longitude = 81.5592;
	[stationList addObject:KI16];

	VXReportingStation *KI63 = [VXReportingStation new];
	KI63.stationIdentifier = @"KI63";
	KI63.associatedCity = @"MOUNT STERLING";
	KI63.associatedState = @"IL";
	KI63.latitude = 39.9881;
	KI63.longitude = 90.8022;
	[stationList addObject:KI63];

	VXReportingStation *KI67 = [VXReportingStation new];
	KI67.stationIdentifier = @"KI67";
	KI67.associatedCity = @"HARRISON";
	KI67.associatedState = @"OH";
	KI67.latitude = 39.2564;
	KI67.longitude = 84.7753;
	[stationList addObject:KI67];

	VXReportingStation *KI68 = [VXReportingStation new];
	KI68.stationIdentifier = @"KI68";
	KI68.associatedCity = @"LEBANON";
	KI68.associatedState = @"OH";
	KI68.latitude = 39.4619;
	KI68.longitude = 84.2517;
	[stationList addObject:KI68];

	VXReportingStation *KI69 = [VXReportingStation new];
	KI69.stationIdentifier = @"KI69";
	KI69.associatedCity = @"BATAVIA";
	KI69.associatedState = @"OH";
	KI69.latitude = 39.0786;
	KI69.longitude = 84.2075;
	[stationList addObject:KI69];

	VXReportingStation *KI75 = [VXReportingStation new];
	KI75.stationIdentifier = @"KI75";
	KI75.associatedCity = @"OSCEOLA";
	KI75.associatedState = @"IA";
	KI75.latitude = 41.0519;
	KI75.longitude = 93.6894;
	[stationList addObject:KI75];

	VXReportingStation *KIAB = [VXReportingStation new];
	KIAB.stationIdentifier = @"KIAB";
	KIAB.associatedCity = @"WICHITA";
	KIAB.associatedState = @"KS";
	KIAB.latitude = 37.6228;
	KIAB.longitude = 97.2672;
	[stationList addObject:KIAB];

	VXReportingStation *KIAD = [VXReportingStation new];
	KIAD.stationIdentifier = @"KIAD";
	KIAD.associatedCity = @"WASHINGTON";
	KIAD.associatedState = @"DC";
	KIAD.latitude = 38.9444;
	KIAD.longitude = 77.4556;
	[stationList addObject:KIAD];

	VXReportingStation *KIAG = [VXReportingStation new];
	KIAG.stationIdentifier = @"KIAG";
	KIAG.associatedCity = @"NIAGARA FALLS";
	KIAG.associatedState = @"NY";
	KIAG.latitude = 43.1072;
	KIAG.longitude = 78.9461;
	[stationList addObject:KIAG];

	VXReportingStation *KIAH = [VXReportingStation new];
	KIAH.stationIdentifier = @"KIAH";
	KIAH.associatedCity = @"HOUSTON";
	KIAH.associatedState = @"TX";
	KIAH.latitude = 29.9842;
	KIAH.longitude = 95.3414;
	[stationList addObject:KIAH];

	VXReportingStation *KIBM = [VXReportingStation new];
	KIBM.stationIdentifier = @"KIBM";
	KIBM.associatedCity = @"KIMBALL";
	KIBM.associatedState = @"NE";
	KIBM.latitude = 41.1881;
	KIBM.longitude = 103.677;
	[stationList addObject:KIBM];

	VXReportingStation *KICL = [VXReportingStation new];
	KICL.stationIdentifier = @"KICL";
	KICL.associatedCity = @"CLARINDA";
	KICL.associatedState = @"IA";
	KICL.latitude = 40.7217;
	KICL.longitude = 95.0264;
	[stationList addObject:KICL];

	VXReportingStation *KICR = [VXReportingStation new];
	KICR.stationIdentifier = @"KICR";
	KICR.associatedCity = @"WINNER";
	KICR.associatedState = @"SD";
	KICR.latitude = 43.39;
	KICR.longitude = 99.8419;
	[stationList addObject:KICR];

	VXReportingStation *KICT = [VXReportingStation new];
	KICT.stationIdentifier = @"KICT";
	KICT.associatedCity = @"WICHITA";
	KICT.associatedState = @"KS";
	KICT.latitude = 37.6497;
	KICT.longitude = 97.4331;
	[stationList addObject:KICT];

	VXReportingStation *KIDA = [VXReportingStation new];
	KIDA.stationIdentifier = @"KIDA";
	KIDA.associatedCity = @"IDAHO FALLS";
	KIDA.associatedState = @"ID";
	KIDA.latitude = 43.5144;
	KIDA.longitude = 112.07;
	[stationList addObject:KIDA];

	VXReportingStation *KIDI = [VXReportingStation new];
	KIDI.stationIdentifier = @"KIDI";
	KIDI.associatedCity = @"INDIANA";
	KIDI.associatedState = @"PA";
	KIDI.latitude = 40.6322;
	KIDI.longitude = 79.1053;
	[stationList addObject:KIDI];

	VXReportingStation *KIEN = [VXReportingStation new];
	KIEN.stationIdentifier = @"KIEN";
	KIEN.associatedCity = @"PINE RIDGE";
	KIEN.associatedState = @"SD";
	KIEN.latitude = 43.0225;
	KIEN.longitude = 102.511;
	[stationList addObject:KIEN];

	VXReportingStation *KIER = [VXReportingStation new];
	KIER.stationIdentifier = @"KIER";
	KIER.associatedCity = @"NATCHITOCHES";
	KIER.associatedState = @"LA";
	KIER.latitude = 31.7356;
	KIER.longitude = 93.0989;
	[stationList addObject:KIER];

	VXReportingStation *KIFA = [VXReportingStation new];
	KIFA.stationIdentifier = @"KIFA";
	KIFA.associatedCity = @"IOWA FALLS";
	KIFA.associatedState = @"IA";
	KIFA.latitude = 42.4706;
	KIFA.longitude = 93.2697;
	[stationList addObject:KIFA];

	VXReportingStation *KIFP = [VXReportingStation new];
	KIFP.stationIdentifier = @"KIFP";
	KIFP.associatedCity = @"BULLHEAD CITY";
	KIFP.associatedState = @"AZ";
	KIFP.latitude = 35.1572;
	KIFP.longitude = 114.559;
	[stationList addObject:KIFP];

	VXReportingStation *KIGM = [VXReportingStation new];
	KIGM.stationIdentifier = @"KIGM";
	KIGM.associatedCity = @"KINGMAN";
	KIGM.associatedState = @"AZ";
	KIGM.latitude = 35.2594;
	KIGM.longitude = 113.938;
	[stationList addObject:KIGM];

	VXReportingStation *KIGQ = [VXReportingStation new];
	KIGQ.stationIdentifier = @"KIGQ";
	KIGQ.associatedCity = @"CHICAGO";
	KIGQ.associatedState = @"IL";
	KIGQ.latitude = 41.5347;
	KIGQ.longitude = 87.5294;
	[stationList addObject:KIGQ];

	VXReportingStation *KIGX = [VXReportingStation new];
	KIGX.stationIdentifier = @"KIGX";
	KIGX.associatedCity = @"CHAPEL HILL";
	KIGX.associatedState = @"NC";
	KIGX.latitude = 35.935;
	KIGX.longitude = 79.0658;
	[stationList addObject:KIGX];

	VXReportingStation *KIIB = [VXReportingStation new];
	KIIB.stationIdentifier = @"KIIB";
	KIIB.associatedCity = @"INDEPENDENCE";
	KIIB.associatedState = @"IA";
	KIIB.latitude = 42.4533;
	KIIB.longitude = 91.9475;
	[stationList addObject:KIIB];

	VXReportingStation *KIIY = [VXReportingStation new];
	KIIY.stationIdentifier = @"KIIY";
	KIIY.associatedCity = @"WASHINGTON";
	KIIY.associatedState = @"GA";
	KIIY.latitude = 33.7792;
	KIIY.longitude = 82.8156;
	[stationList addObject:KIIY];

	VXReportingStation *KIJD = [VXReportingStation new];
	KIJD.stationIdentifier = @"KIJD";
	KIJD.associatedCity = @"WILLIMANTIC";
	KIJD.associatedState = @"CT";
	KIJD.latitude = 41.7439;
	KIJD.longitude = 72.18;
	[stationList addObject:KIJD];

	VXReportingStation *KIJX = [VXReportingStation new];
	KIJX.stationIdentifier = @"KIJX";
	KIJX.associatedCity = @"JACKSONVILLE";
	KIJX.associatedState = @"IL";
	KIJX.latitude = 39.7744;
	KIJX.longitude = 90.2381;
	[stationList addObject:KIJX];

	VXReportingStation *KIKK = [VXReportingStation new];
	KIKK.stationIdentifier = @"KIKK";
	KIKK.associatedCity = @"KANKAKEE";
	KIKK.associatedState = @"IL";
	KIKK.latitude = 41.0714;
	KIKK.longitude = 87.8461;
	[stationList addObject:KIKK];

	VXReportingStation *KIKT = [VXReportingStation new];
	KIKT.stationIdentifier = @"KIKT";
	KIKT.associatedCity = @"NAKIKA";
	KIKT.associatedState = @"MS";
	KIKT.latitude = 28.5208;
	KIKT.longitude = 88.2889;
	[stationList addObject:KIKT];

	VXReportingStation *KIKV = [VXReportingStation new];
	KIKV.stationIdentifier = @"KIKV";
	KIKV.associatedCity = @"ANKENY";
	KIKV.associatedState = @"IA";
	KIKV.latitude = 41.6908;
	KIKV.longitude = 93.5664;
	[stationList addObject:KIKV];

	VXReportingStation *KIKW = [VXReportingStation new];
	KIKW.stationIdentifier = @"KIKW";
	KIKW.associatedCity = @"MIDLAND";
	KIKW.associatedState = @"MI";
	KIKW.latitude = 43.6628;
	KIKW.longitude = 84.2611;
	[stationList addObject:KIKW];

	VXReportingStation *KILE = [VXReportingStation new];
	KILE.stationIdentifier = @"KILE";
	KILE.associatedCity = @"KILLEEN";
	KILE.associatedState = @"TX";
	KILE.latitude = 31.0858;
	KILE.longitude = 97.6864;
	[stationList addObject:KILE];

	VXReportingStation *KILG = [VXReportingStation new];
	KILG.stationIdentifier = @"KILG";
	KILG.associatedCity = @"WILMINGTON";
	KILG.associatedState = @"DE";
	KILG.latitude = 39.6786;
	KILG.longitude = 75.6064;
	[stationList addObject:KILG];

	VXReportingStation *KILM = [VXReportingStation new];
	KILM.stationIdentifier = @"KILM";
	KILM.associatedCity = @"WILMINGTON";
	KILM.associatedState = @"NC";
	KILM.latitude = 34.2667;
	KILM.longitude = 77.8997;
	[stationList addObject:KILM];

	VXReportingStation *KILN = [VXReportingStation new];
	KILN.stationIdentifier = @"KILN";
	KILN.associatedCity = @"WILMINGTON";
	KILN.associatedState = @"OH";
	KILN.latitude = 39.4278;
	KILN.longitude = 83.7919;
	[stationList addObject:KILN];

	VXReportingStation *KIML = [VXReportingStation new];
	KIML.stationIdentifier = @"KIML";
	KIML.associatedCity = @"IMPERIAL";
	KIML.associatedState = @"NE";
	KIML.latitude = 40.5103;
	KIML.longitude = 101.62;
	[stationList addObject:KIML];

	VXReportingStation *KIMS = [VXReportingStation new];
	KIMS.stationIdentifier = @"KIMS";
	KIMS.associatedCity = @"MADISON";
	KIMS.associatedState = @"IN";
	KIMS.latitude = 38.7589;
	KIMS.longitude = 85.4653;
	[stationList addObject:KIMS];

	VXReportingStation *KIMT = [VXReportingStation new];
	KIMT.stationIdentifier = @"KIMT";
	KIMT.associatedCity = @"IRON MOUNTAIN KINGSFORD";
	KIMT.associatedState = @"MI";
	KIMT.latitude = 45.8183;
	KIMT.longitude = 88.1144;
	[stationList addObject:KIMT];

	VXReportingStation *KIND = [VXReportingStation new];
	KIND.stationIdentifier = @"KIND";
	KIND.associatedCity = @"INDIANAPOLIS";
	KIND.associatedState = @"IN";
	KIND.latitude = 39.7172;
	KIND.longitude = 86.2942;
	[stationList addObject:KIND];

	VXReportingStation *KINF = [VXReportingStation new];
	KINF.stationIdentifier = @"KINF";
	KINF.associatedCity = @"INVERNESS";
	KINF.associatedState = @"FL";
	KINF.latitude = 28.8061;
	KINF.longitude = 82.3189;
	[stationList addObject:KINF];

	VXReportingStation *KINJ = [VXReportingStation new];
	KINJ.stationIdentifier = @"KINJ";
	KINJ.associatedCity = @"HILLSBORO";
	KINJ.associatedState = @"TX";
	KINJ.latitude = 32.0833;
	KINJ.longitude = 97.0972;
	[stationList addObject:KINJ];

	VXReportingStation *KINK = [VXReportingStation new];
	KINK.stationIdentifier = @"KINK";
	KINK.associatedCity = @"WINK";
	KINK.associatedState = @"TX";
	KINK.latitude = 31.7794;
	KINK.longitude = 103.201;
	[stationList addObject:KINK];

	VXReportingStation *KINL = [VXReportingStation new];
	KINL.stationIdentifier = @"KINL";
	KINL.associatedCity = @"INTERNATIONAL FALLS";
	KINL.associatedState = @"MN";
	KINL.latitude = 48.5661;
	KINL.longitude = 93.4031;
	[stationList addObject:KINL];

	VXReportingStation *KINT = [VXReportingStation new];
	KINT.stationIdentifier = @"KINT";
	KINT.associatedCity = @"WINSTON SALEM";
	KINT.associatedState = @"NC";
	KINT.latitude = 36.1336;
	KINT.longitude = 80.2219;
	[stationList addObject:KINT];

	VXReportingStation *KINW = [VXReportingStation new];
	KINW.stationIdentifier = @"KINW";
	KINW.associatedCity = @"WINSLOW";
	KINW.associatedState = @"AZ";
	KINW.latitude = 35.0217;
	KINW.longitude = 110.722;
	[stationList addObject:KINW];

	VXReportingStation *KIOB = [VXReportingStation new];
	KIOB.stationIdentifier = @"KIOB";
	KIOB.associatedCity = @"MOUNT STERLING";
	KIOB.associatedState = @"KY";
	KIOB.latitude = 38.0581;
	KIOB.longitude = 83.9794;
	[stationList addObject:KIOB];

	VXReportingStation *KIOW = [VXReportingStation new];
	KIOW.stationIdentifier = @"KIOW";
	KIOW.associatedCity = @"IOWA CITY";
	KIOW.associatedState = @"IA";
	KIOW.latitude = 41.6392;
	KIOW.longitude = 91.5464;
	[stationList addObject:KIOW];

	VXReportingStation *KIPJ = [VXReportingStation new];
	KIPJ.stationIdentifier = @"KIPJ";
	KIPJ.associatedCity = @"LINCOLNTON";
	KIPJ.associatedState = @"NC";
	KIPJ.latitude = 35.4831;
	KIPJ.longitude = 81.1611;
	[stationList addObject:KIPJ];

	VXReportingStation *KIPL = [VXReportingStation new];
	KIPL.stationIdentifier = @"KIPL";
	KIPL.associatedCity = @"IMPERIAL";
	KIPL.associatedState = @"CA";
	KIPL.latitude = 32.8342;
	KIPL.longitude = 115.579;
	[stationList addObject:KIPL];

	VXReportingStation *KIPN = [VXReportingStation new];
	KIPN.stationIdentifier = @"KIPN";
	KIPN.associatedCity = @"INDEPENDENCE";
	KIPN.associatedState = @"LA";
	KIPN.latitude = 28.085;
	KIPN.longitude = 87.9858;
	[stationList addObject:KIPN];

	VXReportingStation *KIPT = [VXReportingStation new];
	KIPT.stationIdentifier = @"KIPT";
	KIPT.associatedCity = @"WILLIAMSPORT";
	KIPT.associatedState = @"PA";
	KIPT.latitude = 41.2417;
	KIPT.longitude = 76.9208;
	[stationList addObject:KIPT];

	VXReportingStation *KIRK = [VXReportingStation new];
	KIRK.stationIdentifier = @"KIRK";
	KIRK.associatedCity = @"KIRKSVILLE";
	KIRK.associatedState = @"MO";
	KIRK.latitude = 40.0933;
	KIRK.longitude = 92.5447;
	[stationList addObject:KIRK];

	VXReportingStation *KIRS = [VXReportingStation new];
	KIRS.stationIdentifier = @"KIRS";
	KIRS.associatedCity = @"STURGIS";
	KIRS.associatedState = @"MI";
	KIRS.latitude = 41.8128;
	KIRS.longitude = 85.4389;
	[stationList addObject:KIRS];

	VXReportingStation *KISM = [VXReportingStation new];
	KISM.stationIdentifier = @"KISM";
	KISM.associatedCity = @"ORLANDO";
	KISM.associatedState = @"FL";
	KISM.latitude = 28.2897;
	KISM.longitude = 81.4369;
	[stationList addObject:KISM];

	VXReportingStation *KISN = [VXReportingStation new];
	KISN.stationIdentifier = @"KISN";
	KISN.associatedCity = @"WILLISTON";
	KISN.associatedState = @"ND";
	KISN.latitude = 48.1778;
	KISN.longitude = 103.642;
	[stationList addObject:KISN];

	VXReportingStation *KISO = [VXReportingStation new];
	KISO.stationIdentifier = @"KISO";
	KISO.associatedCity = @"KINSTON";
	KISO.associatedState = @"NC";
	KISO.latitude = 35.3314;
	KISO.longitude = 77.6086;
	[stationList addObject:KISO];

	VXReportingStation *KISP = [VXReportingStation new];
	KISP.stationIdentifier = @"KISP";
	KISP.associatedCity = @"NEW YORK";
	KISP.associatedState = @"NY";
	KISP.latitude = 40.795;
	KISP.longitude = 73.1;
	[stationList addObject:KISP];

	VXReportingStation *KISQ = [VXReportingStation new];
	KISQ.stationIdentifier = @"KISQ";
	KISQ.associatedCity = @"MANISTIQUE";
	KISQ.associatedState = @"MI";
	KISQ.latitude = 45.9744;
	KISQ.longitude = 86.1717;
	[stationList addObject:KISQ];

	VXReportingStation *KISW = [VXReportingStation new];
	KISW.stationIdentifier = @"KISW";
	KISW.associatedCity = @"WISCONSIN RAPIDS";
	KISW.associatedState = @"WI";
	KISW.latitude = 44.3603;
	KISW.longitude = 89.8389;
	[stationList addObject:KISW];

	VXReportingStation *KITH = [VXReportingStation new];
	KITH.stationIdentifier = @"KITH";
	KITH.associatedCity = @"ITHACA";
	KITH.associatedState = @"NY";
	KITH.latitude = 42.4908;
	KITH.longitude = 76.4583;
	[stationList addObject:KITH];

	VXReportingStation *KITR = [VXReportingStation new];
	KITR.stationIdentifier = @"KITR";
	KITR.associatedCity = @"BURLINGTON";
	KITR.associatedState = @"CO";
	KITR.latitude = 39.2425;
	KITR.longitude = 102.285;
	[stationList addObject:KITR];

	VXReportingStation *KIWA = [VXReportingStation new];
	KIWA.stationIdentifier = @"KIWA";
	KIWA.associatedCity = @"PHOENIX";
	KIWA.associatedState = @"AZ";
	KIWA.latitude = 33.3078;
	KIWA.longitude = 111.655;
	[stationList addObject:KIWA];

	VXReportingStation *KIWD = [VXReportingStation new];
	KIWD.stationIdentifier = @"KIWD";
	KIWD.associatedCity = @"IRONWOOD";
	KIWD.associatedState = @"MI";
	KIWD.latitude = 46.5272;
	KIWD.longitude = 90.1314;
	[stationList addObject:KIWD];

	VXReportingStation *KIWI = [VXReportingStation new];
	KIWI.stationIdentifier = @"KIWI";
	KIWI.associatedCity = @"WISCASSET";
	KIWI.associatedState = @"ME";
	KIWI.latitude = 43.9614;
	KIWI.longitude = 69.7125;
	[stationList addObject:KIWI];

	VXReportingStation *KIWS = [VXReportingStation new];
	KIWS.stationIdentifier = @"KIWS";
	KIWS.associatedCity = @"HOUSTON";
	KIWS.associatedState = @"TX";
	KIWS.latitude = 29.8181;
	KIWS.longitude = 95.6725;
	[stationList addObject:KIWS];

	VXReportingStation *KIXD = [VXReportingStation new];
	KIXD.stationIdentifier = @"KIXD";
	KIXD.associatedCity = @"OLATHE";
	KIXD.associatedState = @"KS";
	KIXD.latitude = 38.8308;
	KIXD.longitude = 94.8903;
	[stationList addObject:KIXD];

	VXReportingStation *KIYA = [VXReportingStation new];
	KIYA.stationIdentifier = @"KIYA";
	KIYA.associatedCity = @"ABBEVILLE";
	KIYA.associatedState = @"LA";
	KIYA.latitude = 29.9756;
	KIYA.longitude = 92.0842;
	[stationList addObject:KIYA];

	VXReportingStation *KIYK = [VXReportingStation new];
	KIYK.stationIdentifier = @"KIYK";
	KIYK.associatedCity = @"INYOKERN";
	KIYK.associatedState = @"CA";
	KIYK.latitude = 35.6586;
	KIYK.longitude = 117.829;
	[stationList addObject:KIYK];

	VXReportingStation *KIZA = [VXReportingStation new];
	KIZA.stationIdentifier = @"KIZA";
	KIZA.associatedCity = @"SANTA YNEZ";
	KIZA.associatedState = @"CA";
	KIZA.latitude = 34.6067;
	KIZA.longitude = 120.076;
	[stationList addObject:KIZA];

	VXReportingStation *KIZG = [VXReportingStation new];
	KIZG.stationIdentifier = @"KIZG";
	KIZG.associatedCity = @"FRYEBURG";
	KIZG.associatedState = @"ME";
	KIZG.latitude = 43.9911;
	KIZG.longitude = 70.9478;
	[stationList addObject:KIZG];

	VXReportingStation *KJAC = [VXReportingStation new];
	KJAC.stationIdentifier = @"KJAC";
	KJAC.associatedCity = @"JACKSON";
	KJAC.associatedState = @"WY";
	KJAC.latitude = 43.6072;
	KJAC.longitude = 110.737;
	[stationList addObject:KJAC];

	VXReportingStation *KJAN = [VXReportingStation new];
	KJAN.stationIdentifier = @"KJAN";
	KJAN.associatedCity = @"JACKSON";
	KJAN.associatedState = @"MS";
	KJAN.latitude = 32.3111;
	KJAN.longitude = 90.0758;
	[stationList addObject:KJAN];

	VXReportingStation *KJAS = [VXReportingStation new];
	KJAS.stationIdentifier = @"KJAS";
	KJAS.associatedCity = @"JASPER";
	KJAS.associatedState = @"TX";
	KJAS.latitude = 30.8856;
	KJAS.longitude = 94.0347;
	[stationList addObject:KJAS];

	VXReportingStation *KJAU = [VXReportingStation new];
	KJAU.stationIdentifier = @"KJAU";
	KJAU.associatedCity = @"JACKSBORO";
	KJAU.associatedState = @"TN";
	KJAU.latitude = 36.3339;
	KJAU.longitude = 84.1628;
	[stationList addObject:KJAU];

	VXReportingStation *KJAX = [VXReportingStation new];
	KJAX.stationIdentifier = @"KJAX";
	KJAX.associatedCity = @"JACKSONVILLE";
	KJAX.associatedState = @"FL";
	KJAX.latitude = 30.4939;
	KJAX.longitude = 81.6878;
	[stationList addObject:KJAX];

	VXReportingStation *KJBR = [VXReportingStation new];
	KJBR.stationIdentifier = @"KJBR";
	KJBR.associatedCity = @"JONESBORO";
	KJBR.associatedState = @"AR";
	KJBR.latitude = 35.8317;
	KJBR.longitude = 90.6464;
	[stationList addObject:KJBR];

	VXReportingStation *KJCT = [VXReportingStation new];
	KJCT.stationIdentifier = @"KJCT";
	KJCT.associatedCity = @"JUNCTION";
	KJCT.associatedState = @"TX";
	KJCT.latitude = 30.5111;
	KJCT.longitude = 99.7628;
	[stationList addObject:KJCT];

	VXReportingStation *KJDD = [VXReportingStation new];
	KJDD.stationIdentifier = @"KJDD";
	KJDD.associatedCity = @"MINEOLA/QUITMAN";
	KJDD.associatedState = @"TX";
	KJDD.latitude = 32.7419;
	KJDD.longitude = 95.4964;
	[stationList addObject:KJDD];

	VXReportingStation *KJEF = [VXReportingStation new];
	KJEF.stationIdentifier = @"KJEF";
	KJEF.associatedCity = @"JEFFERSON CITY";
	KJEF.associatedState = @"MO";
	KJEF.latitude = 38.5911;
	KJEF.longitude = 92.1561;
	[stationList addObject:KJEF];

	VXReportingStation *KJER = [VXReportingStation new];
	KJER.stationIdentifier = @"KJER";
	KJER.associatedCity = @"JEROME";
	KJER.associatedState = @"ID";
	KJER.latitude = 42.7267;
	KJER.longitude = 114.457;
	[stationList addObject:KJER];

	VXReportingStation *KJFK = [VXReportingStation new];
	KJFK.stationIdentifier = @"KJFK";
	KJFK.associatedCity = @"NEW YORK";
	KJFK.associatedState = @"NY";
	KJFK.latitude = 40.6397;
	KJFK.longitude = 73.7789;
	[stationList addObject:KJFK];

	VXReportingStation *KJFX = [VXReportingStation new];
	KJFX.stationIdentifier = @"KJFX";
	KJFX.associatedCity = @"JASPER";
	KJFX.associatedState = @"AL";
	KJFX.latitude = 35.9006;
	KJFX.longitude = 87.5422;
	[stationList addObject:KJFX];

	VXReportingStation *KJFZ = [VXReportingStation new];
	KJFZ.stationIdentifier = @"KJFZ";
	KJFZ.associatedCity = @"RICHLANDS";
	KJFZ.associatedState = @"VA";
	KJFZ.latitude = 37.0636;
	KJFZ.longitude = 81.7981;
	[stationList addObject:KJFZ];

	VXReportingStation *KJGG = [VXReportingStation new];
	KJGG.stationIdentifier = @"KJGG";
	KJGG.associatedCity = @"WILLIAMSBURG";
	KJGG.associatedState = @"VA";
	KJGG.latitude = 37.2392;
	KJGG.longitude = 76.7158;
	[stationList addObject:KJGG];

	VXReportingStation *KJHN = [VXReportingStation new];
	KJHN.stationIdentifier = @"KJHN";
	KJHN.associatedCity = @"JOHNSON";
	KJHN.associatedState = @"KS";
	KJHN.latitude = 37.5781;
	KJHN.longitude = 101.73;
	[stationList addObject:KJHN];

	VXReportingStation *KJHW = [VXReportingStation new];
	KJHW.stationIdentifier = @"KJHW";
	KJHW.associatedCity = @"JAMESTOWN";
	KJHW.associatedState = @"NY";
	KJHW.latitude = 42.1533;
	KJHW.longitude = 79.2578;
	[stationList addObject:KJHW];

	VXReportingStation *KJKA = [VXReportingStation new];
	KJKA.stationIdentifier = @"KJKA";
	KJKA.associatedCity = @"GULF SHORES";
	KJKA.associatedState = @"AL";
	KJKA.latitude = 30.2903;
	KJKA.longitude = 87.6717;
	[stationList addObject:KJKA];

	VXReportingStation *KJKL = [VXReportingStation new];
	KJKL.stationIdentifier = @"KJKL";
	KJKL.associatedCity = @"JACKSON";
	KJKL.associatedState = @"KY";
	KJKL.latitude = 37.5936;
	KJKL.longitude = 83.3172;
	[stationList addObject:KJKL];

	VXReportingStation *KJLN = [VXReportingStation new];
	KJLN.stationIdentifier = @"KJLN";
	KJLN.associatedCity = @"JOPLIN";
	KJLN.associatedState = @"MO";
	KJLN.latitude = 37.1517;
	KJLN.longitude = 94.4981;
	[stationList addObject:KJLN];

	VXReportingStation *KJMR = [VXReportingStation new];
	KJMR.stationIdentifier = @"KJMR";
	KJMR.associatedCity = @"MORA";
	KJMR.associatedState = @"MN";
	KJMR.latitude = 45.8858;
	KJMR.longitude = 93.2717;
	[stationList addObject:KJMR];

	VXReportingStation *KJMS = [VXReportingStation new];
	KJMS.stationIdentifier = @"KJMS";
	KJMS.associatedCity = @"JAMESTOWN";
	KJMS.associatedState = @"ND";
	KJMS.latitude = 46.9294;
	KJMS.longitude = 98.6781;
	[stationList addObject:KJMS];

	VXReportingStation *KJNX = [VXReportingStation new];
	KJNX.stationIdentifier = @"KJNX";
	KJNX.associatedCity = @"SMITHFIELD";
	KJNX.associatedState = @"NC";
	KJNX.latitude = 35.5408;
	KJNX.longitude = 78.3903;
	[stationList addObject:KJNX];

	VXReportingStation *KJOT = [VXReportingStation new];
	KJOT.stationIdentifier = @"KJOT";
	KJOT.associatedCity = @"JOLIET";
	KJOT.associatedState = @"IL";
	KJOT.latitude = 41.5178;
	KJOT.longitude = 88.1753;
	[stationList addObject:KJOT];

	VXReportingStation *KJPD = [VXReportingStation new];
	KJPD.stationIdentifier = @"KJPD";
	KJPD.associatedCity = @"POWDER RIVER PASS";
	KJPD.associatedState = @"WY";
	KJPD.latitude = 43.9825;
	KJPD.longitude = 107.124;
	[stationList addObject:KJPD];

	VXReportingStation *KJQF = [VXReportingStation new];
	KJQF.stationIdentifier = @"KJQF";
	KJQF.associatedCity = @"CONCORD";
	KJQF.associatedState = @"NC";
	KJQF.latitude = 35.385;
	KJQF.longitude = 80.7094;
	[stationList addObject:KJQF];

	VXReportingStation *KJSO = [VXReportingStation new];
	KJSO.stationIdentifier = @"KJSO";
	KJSO.associatedCity = @"JACKSONVILLE";
	KJSO.associatedState = @"TX";
	KJSO.latitude = 31.8692;
	KJSO.longitude = 95.2172;
	[stationList addObject:KJSO];

	VXReportingStation *KJST = [VXReportingStation new];
	KJST.stationIdentifier = @"KJST";
	KJST.associatedCity = @"JOHNSTOWN";
	KJST.associatedState = @"PA";
	KJST.latitude = 40.3161;
	KJST.longitude = 78.8339;
	[stationList addObject:KJST];

	VXReportingStation *KJSV = [VXReportingStation new];
	KJSV.stationIdentifier = @"KJSV";
	KJSV.associatedCity = @"SALLISAW";
	KJSV.associatedState = @"OK";
	KJSV.latitude = 35.4381;
	KJSV.longitude = 94.8028;
	[stationList addObject:KJSV];

	VXReportingStation *KJTC = [VXReportingStation new];
	KJTC.stationIdentifier = @"KJTC";
	KJTC.associatedCity = @"SPRINGERVILLE";
	KJTC.associatedState = @"AZ";
	KJTC.latitude = 34.1331;
	KJTC.longitude = 109.309;
	[stationList addObject:KJTC];

	VXReportingStation *KJVL = [VXReportingStation new];
	KJVL.stationIdentifier = @"KJVL";
	KJVL.associatedCity = @"JANESVILLE";
	KJVL.associatedState = @"WI";
	KJVL.latitude = 42.62;
	KJVL.longitude = 89.0414;
	[stationList addObject:KJVL];

	VXReportingStation *KJVW = [VXReportingStation new];
	KJVW.stationIdentifier = @"KJVW";
	KJVW.associatedCity = @"RAYMOND";
	KJVW.associatedState = @"MS";
	KJVW.latitude = 32.3044;
	KJVW.longitude = 90.4103;
	[stationList addObject:KJVW];

	VXReportingStation *KJWG = [VXReportingStation new];
	KJWG.stationIdentifier = @"KJWG";
	KJWG.associatedCity = @"WATONGA";
	KJWG.associatedState = @"OK";
	KJWG.latitude = 35.8644;
	KJWG.longitude = 98.4206;
	[stationList addObject:KJWG];

	VXReportingStation *KJWY = [VXReportingStation new];
	KJWY.stationIdentifier = @"KJWY";
	KJWY.associatedCity = @"MIDLOTHIAN/WAXAHACHIE";
	KJWY.associatedState = @"TX";
	KJWY.latitude = 32.4558;
	KJWY.longitude = 96.9122;
	[stationList addObject:KJWY];

	VXReportingStation *KJXI = [VXReportingStation new];
	KJXI.stationIdentifier = @"KJXI";
	KJXI.associatedCity = @"GILMER";
	KJXI.associatedState = @"TX";
	KJXI.latitude = 32.6989;
	KJXI.longitude = 94.9486;
	[stationList addObject:KJXI];

	VXReportingStation *KJXN = [VXReportingStation new];
	KJXN.stationIdentifier = @"KJXN";
	KJXN.associatedCity = @"JACKSON";
	KJXN.associatedState = @"MI";
	KJXN.latitude = 42.2597;
	KJXN.longitude = 84.4592;
	[stationList addObject:KJXN];

	VXReportingStation *KJYG = [VXReportingStation new];
	KJYG.stationIdentifier = @"KJYG";
	KJYG.associatedCity = @"ST JAMES";
	KJYG.associatedState = @"MN";
	KJYG.latitude = 43.9861;
	KJYG.longitude = 94.5578;
	[stationList addObject:KJYG];

	VXReportingStation *KJYL = [VXReportingStation new];
	KJYL.stationIdentifier = @"KJYL";
	KJYL.associatedCity = @"SYLVANIA";
	KJYL.associatedState = @"GA";
	KJYL.latitude = 32.6458;
	KJYL.longitude = 81.5892;
	[stationList addObject:KJYL];

	VXReportingStation *KJYO = [VXReportingStation new];
	KJYO.stationIdentifier = @"KJYO";
	KJYO.associatedCity = @"LEESBURG";
	KJYO.associatedState = @"VA";
	KJYO.latitude = 39.0778;
	KJYO.longitude = 77.5575;
	[stationList addObject:KJYO];

	VXReportingStation *KJYR = [VXReportingStation new];
	KJYR.stationIdentifier = @"KJYR";
	KJYR.associatedCity = @"YORK";
	KJYR.associatedState = @"NE";
	KJYR.latitude = 40.8967;
	KJYR.longitude = 97.6228;
	[stationList addObject:KJYR];

	VXReportingStation *KJZI = [VXReportingStation new];
	KJZI.stationIdentifier = @"KJZI";
	KJZI.associatedCity = @"CHARLESTON";
	KJZI.associatedState = @"SC";
	KJZI.latitude = 32.7025;
	KJZI.longitude = 80.0058;
	[stationList addObject:KJZI];

	VXReportingStation *KJZP = [VXReportingStation new];
	KJZP.stationIdentifier = @"KJZP";
	KJZP.associatedCity = @"JASPER";
	KJZP.associatedState = @"GA";
	KJZP.latitude = 34.4539;
	KJZP.longitude = 84.4594;
	[stationList addObject:KJZP];

	VXReportingStation *KK78 = [VXReportingStation new];
	KK78.stationIdentifier = @"KK78";
	KK78.associatedCity = @"ABILENE";
	KK78.associatedState = @"KS";
	KK78.latitude = 38.9039;
	KK78.longitude = 97.2358;
	[stationList addObject:KK78];

	VXReportingStation *KKLS = [VXReportingStation new];
	KKLS.stationIdentifier = @"KKLS";
	KKLS.associatedCity = @"KELSO";
	KKLS.associatedState = @"WA";
	KKLS.latitude = 46.1178;
	KKLS.longitude = 122.898;
	[stationList addObject:KKLS];

	VXReportingStation *KL35 = [VXReportingStation new];
	KL35.stationIdentifier = @"KL35";
	KL35.associatedCity = @"BIG BEAR CITY";
	KL35.associatedState = @"CA";
	KL35.latitude = 34.2636;
	KL35.longitude = 116.856;
	[stationList addObject:KL35];

	VXReportingStation *KL38 = [VXReportingStation new];
	KL38.stationIdentifier = @"KL38";
	KL38.associatedCity = @"GONZALES";
	KL38.associatedState = @"LA";
	KL38.latitude = 30.1725;
	KL38.longitude = 90.9406;
	[stationList addObject:KL38];

	VXReportingStation *KLAA = [VXReportingStation new];
	KLAA.stationIdentifier = @"KLAA";
	KLAA.associatedCity = @"LAMAR";
	KLAA.associatedState = @"CO";
	KLAA.latitude = 38.0694;
	KLAA.longitude = 102.688;
	[stationList addObject:KLAA];

	VXReportingStation *KLAF = [VXReportingStation new];
	KLAF.stationIdentifier = @"KLAF";
	KLAF.associatedCity = @"LAFAYETTE";
	KLAF.associatedState = @"IN";
	KLAF.latitude = 40.4122;
	KLAF.longitude = 86.9367;
	[stationList addObject:KLAF];

	VXReportingStation *KLAL = [VXReportingStation new];
	KLAL.stationIdentifier = @"KLAL";
	KLAL.associatedCity = @"LAKELAND";
	KLAL.associatedState = @"FL";
	KLAL.latitude = 27.9889;
	KLAL.longitude = 82.0183;
	[stationList addObject:KLAL];

	VXReportingStation *KLAM = [VXReportingStation new];
	KLAM.stationIdentifier = @"KLAM";
	KLAM.associatedCity = @"LOS ALAMOS";
	KLAM.associatedState = @"NM";
	KLAM.latitude = 35.8797;
	KLAM.longitude = 106.269;
	[stationList addObject:KLAM];

	VXReportingStation *KLAN = [VXReportingStation new];
	KLAN.stationIdentifier = @"KLAN";
	KLAN.associatedCity = @"LANSING";
	KLAN.associatedState = @"MI";
	KLAN.latitude = 42.7786;
	KLAN.longitude = 84.5872;
	[stationList addObject:KLAN];

	VXReportingStation *KLAR = [VXReportingStation new];
	KLAR.stationIdentifier = @"KLAR";
	KLAR.associatedCity = @"LARAMIE";
	KLAR.associatedState = @"WY";
	KLAR.latitude = 41.3119;
	KLAR.longitude = 105.675;
	[stationList addObject:KLAR];

	VXReportingStation *KLAS = [VXReportingStation new];
	KLAS.stationIdentifier = @"KLAS";
	KLAS.associatedCity = @"LAS VEGAS";
	KLAS.associatedState = @"NV";
	KLAS.latitude = 36.0803;
	KLAS.longitude = 115.152;
	[stationList addObject:KLAS];

	VXReportingStation *KLAW = [VXReportingStation new];
	KLAW.stationIdentifier = @"KLAW";
	KLAW.associatedCity = @"LAWTON";
	KLAW.associatedState = @"OK";
	KLAW.latitude = 34.5675;
	KLAW.longitude = 98.4164;
	[stationList addObject:KLAW];

	VXReportingStation *KLAX = [VXReportingStation new];
	KLAX.stationIdentifier = @"KLAX";
	KLAX.associatedCity = @"LOS ANGELES";
	KLAX.associatedState = @"CA";
	KLAX.latitude = 33.9425;
	KLAX.longitude = 118.408;
	[stationList addObject:KLAX];

	VXReportingStation *KLBB = [VXReportingStation new];
	KLBB.stationIdentifier = @"KLBB";
	KLBB.associatedCity = @"LUBBOCK";
	KLBB.associatedState = @"TX";
	KLBB.latitude = 33.6636;
	KLBB.longitude = 101.823;
	[stationList addObject:KLBB];

	VXReportingStation *KLBE = [VXReportingStation new];
	KLBE.stationIdentifier = @"KLBE";
	KLBE.associatedCity = @"LATROBE";
	KLBE.associatedState = @"PA";
	KLBE.latitude = 40.2758;
	KLBE.longitude = 79.4047;
	[stationList addObject:KLBE];

	VXReportingStation *KLBF = [VXReportingStation new];
	KLBF.stationIdentifier = @"KLBF";
	KLBF.associatedCity = @"NORTH PLATTE";
	KLBF.associatedState = @"NE";
	KLBF.latitude = 41.1261;
	KLBF.longitude = 100.684;
	[stationList addObject:KLBF];

	VXReportingStation *KLBL = [VXReportingStation new];
	KLBL.stationIdentifier = @"KLBL";
	KLBL.associatedCity = @"LIBERAL";
	KLBL.associatedState = @"KS";
	KLBL.latitude = 37.0442;
	KLBL.longitude = 100.96;
	[stationList addObject:KLBL];

	VXReportingStation *KLBR = [VXReportingStation new];
	KLBR.stationIdentifier = @"KLBR";
	KLBR.associatedCity = @"CLARKSVILLE";
	KLBR.associatedState = @"TX";
	KLBR.latitude = 33.595;
	KLBR.longitude = 95.0642;
	[stationList addObject:KLBR];

	VXReportingStation *KLBT = [VXReportingStation new];
	KLBT.stationIdentifier = @"KLBT";
	KLBT.associatedCity = @"LUMBERTON";
	KLBT.associatedState = @"NC";
	KLBT.latitude = 34.6097;
	KLBT.longitude = 79.0594;
	[stationList addObject:KLBT];

	VXReportingStation *KLBX = [VXReportingStation new];
	KLBX.stationIdentifier = @"KLBX";
	KLBX.associatedCity = @"ANGLETON/LAKE JACKSON";
	KLBX.associatedState = @"TX";
	KLBX.latitude = 29.1086;
	KLBX.longitude = 95.4619;
	[stationList addObject:KLBX];

	VXReportingStation *KLCG = [VXReportingStation new];
	KLCG.stationIdentifier = @"KLCG";
	KLCG.associatedCity = @"WAYNE";
	KLCG.associatedState = @"NE";
	KLCG.latitude = 42.2417;
	KLCG.longitude = 96.9814;
	[stationList addObject:KLCG];

	VXReportingStation *KLCH = [VXReportingStation new];
	KLCH.stationIdentifier = @"KLCH";
	KLCH.associatedCity = @"LAKE CHARLES";
	KLCH.associatedState = @"LA";
	KLCH.latitude = 30.1258;
	KLCH.longitude = 93.2233;
	[stationList addObject:KLCH];

	VXReportingStation *KLCI = [VXReportingStation new];
	KLCI.stationIdentifier = @"KLCI";
	KLCI.associatedCity = @"LACONIA";
	KLCI.associatedState = @"NH";
	KLCI.latitude = 43.5725;
	KLCI.longitude = 71.4189;
	[stationList addObject:KLCI];

	VXReportingStation *KLCK = [VXReportingStation new];
	KLCK.stationIdentifier = @"KLCK";
	KLCK.associatedCity = @"COLUMBUS";
	KLCK.associatedState = @"OH";
	KLCK.latitude = 39.8136;
	KLCK.longitude = 82.9278;
	[stationList addObject:KLCK];

	VXReportingStation *KLCQ = [VXReportingStation new];
	KLCQ.stationIdentifier = @"KLCQ";
	KLCQ.associatedCity = @"LAKE CITY";
	KLCQ.associatedState = @"FL";
	KLCQ.latitude = 30.1819;
	KLCQ.longitude = 82.5767;
	[stationList addObject:KLCQ];

	VXReportingStation *KLDJ = [VXReportingStation new];
	KLDJ.stationIdentifier = @"KLDJ";
	KLDJ.associatedCity = @"LINDEN";
	KLDJ.associatedState = @"NJ";
	KLDJ.latitude = 40.6494;
	KLDJ.longitude = 74.245;
	[stationList addObject:KLDJ];

	VXReportingStation *KLEB = [VXReportingStation new];
	KLEB.stationIdentifier = @"KLEB";
	KLEB.associatedCity = @"LEBANON";
	KLEB.associatedState = @"NH";
	KLEB.latitude = 43.6261;
	KLEB.longitude = 72.3042;
	[stationList addObject:KLEB];

	VXReportingStation *KLEE = [VXReportingStation new];
	KLEE.stationIdentifier = @"KLEE";
	KLEE.associatedCity = @"LEESBURG";
	KLEE.associatedState = @"FL";
	KLEE.latitude = 28.8225;
	KLEE.longitude = 81.8089;
	[stationList addObject:KLEE];

	VXReportingStation *KLEW = [VXReportingStation new];
	KLEW.stationIdentifier = @"KLEW";
	KLEW.associatedCity = @"AUBURN/LEWISTON";
	KLEW.associatedState = @"ME";
	KLEW.latitude = 44.0483;
	KLEW.longitude = 70.2833;
	[stationList addObject:KLEW];

	VXReportingStation *KLEX = [VXReportingStation new];
	KLEX.stationIdentifier = @"KLEX";
	KLEX.associatedCity = @"LEXINGTON";
	KLEX.associatedState = @"KY";
	KLEX.latitude = 38.0369;
	KLEX.longitude = 84.6053;
	[stationList addObject:KLEX];

	VXReportingStation *KLFI = [VXReportingStation new];
	KLFI.stationIdentifier = @"KLFI";
	KLFI.associatedCity = @"HAMPTON";
	KLFI.associatedState = @"VA";
	KLFI.latitude = 37.0828;
	KLFI.longitude = 76.3603;
	[stationList addObject:KLFI];

	VXReportingStation *KLFK = [VXReportingStation new];
	KLFK.stationIdentifier = @"KLFK";
	KLFK.associatedCity = @"LUFKIN";
	KLFK.associatedState = @"TX";
	KLFK.latitude = 31.2339;
	KLFK.longitude = 94.75;
	[stationList addObject:KLFK];

	VXReportingStation *KLFT = [VXReportingStation new];
	KLFT.stationIdentifier = @"KLFT";
	KLFT.associatedCity = @"LAFAYETTE";
	KLFT.associatedState = @"LA";
	KLFT.latitude = 30.2053;
	KLFT.longitude = 91.9875;
	[stationList addObject:KLFT];

	VXReportingStation *KLGA = [VXReportingStation new];
	KLGA.stationIdentifier = @"KLGA";
	KLGA.associatedCity = @"NEW YORK";
	KLGA.associatedState = @"NY";
	KLGA.latitude = 40.7772;
	KLGA.longitude = 73.8725;
	[stationList addObject:KLGA];

	VXReportingStation *KLGB = [VXReportingStation new];
	KLGB.stationIdentifier = @"KLGB";
	KLGB.associatedCity = @"LONG BEACH";
	KLGB.associatedState = @"CA";
	KLGB.latitude = 33.8175;
	KLGB.longitude = 118.151;
	[stationList addObject:KLGB];

	VXReportingStation *KLGC = [VXReportingStation new];
	KLGC.stationIdentifier = @"KLGC";
	KLGC.associatedCity = @"LAGRANGE";
	KLGC.associatedState = @"GA";
	KLGC.latitude = 33.0086;
	KLGC.longitude = 85.0725;
	[stationList addObject:KLGC];

	VXReportingStation *KLGD = [VXReportingStation new];
	KLGD.stationIdentifier = @"KLGD";
	KLGD.associatedCity = @"LA GRANDE";
	KLGD.associatedState = @"OR";
	KLGD.latitude = 45.29;
	KLGD.longitude = 118.007;
	[stationList addObject:KLGD];

	VXReportingStation *KLGU = [VXReportingStation new];
	KLGU.stationIdentifier = @"KLGU";
	KLGU.associatedCity = @"LOGAN";
	KLGU.associatedState = @"UT";
	KLGU.latitude = 41.7911;
	KLGU.longitude = 111.851;
	[stationList addObject:KLGU];

	VXReportingStation *KLHB = [VXReportingStation new];
	KLHB.stationIdentifier = @"KLHB";
	KLHB.associatedCity = @"HEARNE";
	KLHB.associatedState = @"TX";
	KLHB.latitude = 30.8717;
	KLHB.longitude = 96.6222;
	[stationList addObject:KLHB];

	VXReportingStation *KLHQ = [VXReportingStation new];
	KLHQ.stationIdentifier = @"KLHQ";
	KLHQ.associatedCity = @"LANCASTER";
	KLHQ.associatedState = @"OH";
	KLHQ.latitude = 39.7556;
	KLHQ.longitude = 82.6572;
	[stationList addObject:KLHQ];

	VXReportingStation *KLHW = [VXReportingStation new];
	KLHW.stationIdentifier = @"KLHW";
	KLHW.associatedCity = @"FORT STEWART(HINESVILLE)";
	KLHW.associatedState = @"GA";
	KLHW.latitude = 31.8892;
	KLHW.longitude = 81.5622;
	[stationList addObject:KLHW];

	VXReportingStation *KLHX = [VXReportingStation new];
	KLHX.stationIdentifier = @"KLHX";
	KLHX.associatedCity = @"LA JUNTA";
	KLHX.associatedState = @"CO";
	KLHX.latitude = 38.0494;
	KLHX.longitude = 103.509;
	[stationList addObject:KLHX];

	VXReportingStation *KLHZ = [VXReportingStation new];
	KLHZ.stationIdentifier = @"KLHZ";
	KLHZ.associatedCity = @"LOUISBURG";
	KLHZ.associatedState = @"NC";
	KLHZ.latitude = 36.0233;
	KLHZ.longitude = 78.33;
	[stationList addObject:KLHZ];

	VXReportingStation *KLIC = [VXReportingStation new];
	KLIC.stationIdentifier = @"KLIC";
	KLIC.associatedCity = @"LIMON";
	KLIC.associatedState = @"CO";
	KLIC.latitude = 39.2725;
	KLIC.longitude = 103.666;
	[stationList addObject:KLIC];

	VXReportingStation *KLIT = [VXReportingStation new];
	KLIT.stationIdentifier = @"KLIT";
	KLIT.associatedCity = @"LITTLE ROCK";
	KLIT.associatedState = @"AR";
	KLIT.latitude = 34.7294;
	KLIT.longitude = 92.2242;
	[stationList addObject:KLIT];

	VXReportingStation *KLJF = [VXReportingStation new];
	KLJF.stationIdentifier = @"KLJF";
	KLJF.associatedCity = @"LITCHFIELD";
	KLJF.associatedState = @"MN";
	KLJF.latitude = 45.0969;
	KLJF.longitude = 94.5072;
	[stationList addObject:KLJF];

	VXReportingStation *KLKR = [VXReportingStation new];
	KLKR.stationIdentifier = @"KLKR";
	KLKR.associatedCity = @"LANCASTER";
	KLKR.associatedState = @"SC";
	KLKR.latitude = 34.7228;
	KLKR.longitude = 80.8544;
	[stationList addObject:KLKR];

	VXReportingStation *KLKU = [VXReportingStation new];
	KLKU.stationIdentifier = @"KLKU";
	KLKU.associatedCity = @"LOUISA";
	KLKU.associatedState = @"VA";
	KLKU.latitude = 38.0097;
	KLKU.longitude = 77.97;
	[stationList addObject:KLKU];

	VXReportingStation *KLKV = [VXReportingStation new];
	KLKV.stationIdentifier = @"KLKV";
	KLKV.associatedCity = @"LAKEVIEW";
	KLKV.associatedState = @"OR";
	KLKV.latitude = 42.1611;
	KLKV.longitude = 120.399;
	[stationList addObject:KLKV];

	VXReportingStation *KLLJ = [VXReportingStation new];
	KLLJ.stationIdentifier = @"KLLJ";
	KLLJ.associatedCity = @"CHALLIS";
	KLLJ.associatedState = @"ID";
	KLLJ.latitude = 43.5228;
	KLLJ.longitude = 114.215;
	[stationList addObject:KLLJ];

	VXReportingStation *KLLQ = [VXReportingStation new];
	KLLQ.stationIdentifier = @"KLLQ";
	KLLQ.associatedCity = @"MONTICELLO";
	KLLQ.associatedState = @"AR";
	KLLQ.latitude = 33.6383;
	KLLQ.longitude = 91.7508;
	[stationList addObject:KLLQ];

	VXReportingStation *KLMO = [VXReportingStation new];
	KLMO.stationIdentifier = @"KLMO";
	KLMO.associatedCity = @"LONGMONT";
	KLMO.associatedState = @"CO";
	KLMO.latitude = 40.1617;
	KLMO.longitude = 105.163;
	[stationList addObject:KLMO];

	VXReportingStation *KLMT = [VXReportingStation new];
	KLMT.stationIdentifier = @"KLMT";
	KLMT.associatedCity = @"KLAMATH FALLS";
	KLMT.associatedState = @"OR";
	KLMT.latitude = 42.1561;
	KLMT.longitude = 121.733;
	[stationList addObject:KLMT];

	VXReportingStation *KLNC = [VXReportingStation new];
	KLNC.stationIdentifier = @"KLNC";
	KLNC.associatedCity = @"LANCASTER";
	KLNC.associatedState = @"TX";
	KLNC.latitude = 32.5792;
	KLNC.longitude = 96.7189;
	[stationList addObject:KLNC];

	VXReportingStation *KLND = [VXReportingStation new];
	KLND.stationIdentifier = @"KLND";
	KLND.associatedCity = @"LANDER";
	KLND.associatedState = @"WY";
	KLND.latitude = 42.5133;
	KLND.longitude = 108.777;
	[stationList addObject:KLND];

	VXReportingStation *KLNK = [VXReportingStation new];
	KLNK.stationIdentifier = @"KLNK";
	KLNK.associatedCity = @"LINCOLN";
	KLNK.associatedState = @"NE";
	KLNK.latitude = 40.8508;
	KLNK.longitude = 96.7592;
	[stationList addObject:KLNK];

	VXReportingStation *KLNL = [VXReportingStation new];
	KLNL.stationIdentifier = @"KLNL";
	KLNL.associatedCity = @"LAND O' LAKES";
	KLNL.associatedState = @"WI";
	KLNL.latitude = 46.1539;
	KLNL.longitude = 89.2119;
	[stationList addObject:KLNL];

	VXReportingStation *KLNN = [VXReportingStation new];
	KLNN.stationIdentifier = @"KLNN";
	KLNN.associatedCity = @"WILLOUGHBY";
	KLNN.associatedState = @"OH";
	KLNN.latitude = 41.6842;
	KLNN.longitude = 81.3894;
	[stationList addObject:KLNN];

	VXReportingStation *KLNP = [VXReportingStation new];
	KLNP.stationIdentifier = @"KLNP";
	KLNP.associatedCity = @"WISE";
	KLNP.associatedState = @"VA";
	KLNP.latitude = 36.9875;
	KLNP.longitude = 82.53;
	[stationList addObject:KLNP];

	VXReportingStation *KLNR = [VXReportingStation new];
	KLNR.stationIdentifier = @"KLNR";
	KLNR.associatedCity = @"LONE ROCK";
	KLNR.associatedState = @"WI";
	KLNR.latitude = 43.2117;
	KLNR.longitude = 90.1814;
	[stationList addObject:KLNR];

	VXReportingStation *KLNS = [VXReportingStation new];
	KLNS.stationIdentifier = @"KLNS";
	KLNS.associatedCity = @"LANCASTER";
	KLNS.associatedState = @"PA";
	KLNS.latitude = 40.1217;
	KLNS.longitude = 76.2958;
	[stationList addObject:KLNS];

	VXReportingStation *KLOL = [VXReportingStation new];
	KLOL.stationIdentifier = @"KLOL";
	KLOL.associatedCity = @"LOVELOCK";
	KLOL.associatedState = @"NV";
	KLOL.latitude = 40.0664;
	KLOL.longitude = 118.565;
	[stationList addObject:KLOL];

	VXReportingStation *KLOM = [VXReportingStation new];
	KLOM.stationIdentifier = @"KLOM";
	KLOM.associatedCity = @"PHILADELPHIA";
	KLOM.associatedState = @"PA";
	KLOM.latitude = 40.1375;
	KLOM.longitude = 75.265;
	[stationList addObject:KLOM];

	VXReportingStation *KLOT = [VXReportingStation new];
	KLOT.stationIdentifier = @"KLOT";
	KLOT.associatedCity = @"CHICAGO/ROMEOVILLE";
	KLOT.associatedState = @"IL";
	KLOT.latitude = 41.6083;
	KLOT.longitude = 88.0939;
	[stationList addObject:KLOT];

	VXReportingStation *KLOU = [VXReportingStation new];
	KLOU.stationIdentifier = @"KLOU";
	KLOU.associatedCity = @"LOUISVILLE";
	KLOU.associatedState = @"KY";
	KLOU.latitude = 38.2278;
	KLOU.longitude = 85.6636;
	[stationList addObject:KLOU];

	VXReportingStation *KLOZ = [VXReportingStation new];
	KLOZ.stationIdentifier = @"KLOZ";
	KLOZ.associatedCity = @"LONDON";
	KLOZ.associatedState = @"KY";
	KLOZ.latitude = 37.0867;
	KLOZ.longitude = 84.0772;
	[stationList addObject:KLOZ];

	VXReportingStation *KLPC = [VXReportingStation new];
	KLPC.stationIdentifier = @"KLPC";
	KLPC.associatedCity = @"LOMPOC";
	KLPC.associatedState = @"CA";
	KLPC.latitude = 34.6656;
	KLPC.longitude = 120.468;
	[stationList addObject:KLPC];

	VXReportingStation *KLPR = [VXReportingStation new];
	KLPR.stationIdentifier = @"KLPR";
	KLPR.associatedCity = @"LORAIN/ELYRIA";
	KLPR.associatedState = @"OH";
	KLPR.latitude = 41.3442;
	KLPR.longitude = 82.1775;
	[stationList addObject:KLPR];

	VXReportingStation *KLQK = [VXReportingStation new];
	KLQK.stationIdentifier = @"KLQK";
	KLQK.associatedCity = @"PICKENS";
	KLQK.associatedState = @"SC";
	KLQK.latitude = 34.8097;
	KLQK.longitude = 82.7028;
	[stationList addObject:KLQK];

	VXReportingStation *KLRD = [VXReportingStation new];
	KLRD.stationIdentifier = @"KLRD";
	KLRD.associatedCity = @"LAREDO";
	KLRD.associatedState = @"TX";
	KLRD.latitude = 27.5436;
	KLRD.longitude = 99.4614;
	[stationList addObject:KLRD];

	VXReportingStation *KLRF = [VXReportingStation new];
	KLRF.stationIdentifier = @"KLRF";
	KLRF.associatedCity = @"JACKSONVILLE";
	KLRF.associatedState = @"AR";
	KLRF.latitude = 34.9181;
	KLRF.longitude = 92.1464;
	[stationList addObject:KLRF];

	VXReportingStation *KLRJ = [VXReportingStation new];
	KLRJ.stationIdentifier = @"KLRJ";
	KLRJ.associatedCity = @"LE MARS";
	KLRJ.associatedState = @"IA";
	KLRJ.latitude = 42.7778;
	KLRJ.longitude = 96.1936;
	[stationList addObject:KLRJ];

	VXReportingStation *KLRO = [VXReportingStation new];
	KLRO.stationIdentifier = @"KLRO";
	KLRO.associatedCity = @"MOUNT PLEASANT";
	KLRO.associatedState = @"SC";
	KLRO.latitude = 32.8978;
	KLRO.longitude = 79.7828;
	[stationList addObject:KLRO];

	VXReportingStation *KLRU = [VXReportingStation new];
	KLRU.stationIdentifier = @"KLRU";
	KLRU.associatedCity = @"LAS CRUCES";
	KLRU.associatedState = @"NM";
	KLRU.latitude = 32.2892;
	KLRU.longitude = 106.922;
	[stationList addObject:KLRU];

	VXReportingStation *KLSB = [VXReportingStation new];
	KLSB.stationIdentifier = @"KLSB";
	KLSB.associatedCity = @"LORDSBURG";
	KLSB.associatedState = @"NM";
	KLSB.latitude = 32.3333;
	KLSB.longitude = 108.692;
	[stationList addObject:KLSB];

	VXReportingStation *KLSE = [VXReportingStation new];
	KLSE.stationIdentifier = @"KLSE";
	KLSE.associatedCity = @"LA CROSSE";
	KLSE.associatedState = @"WI";
	KLSE.latitude = 43.8789;
	KLSE.longitude = 91.2567;
	[stationList addObject:KLSE];

	VXReportingStation *KLSF = [VXReportingStation new];
	KLSF.stationIdentifier = @"KLSF";
	KLSF.associatedCity = @"FORT BENNING(COLUMBUS)";
	KLSF.associatedState = @"GA";
	KLSF.latitude = 32.3372;
	KLSF.longitude = 84.9911;
	[stationList addObject:KLSF];

	VXReportingStation *KLSV = [VXReportingStation new];
	KLSV.stationIdentifier = @"KLSV";
	KLSV.associatedCity = @"LAS VEGAS";
	KLSV.associatedState = @"NV";
	KLSV.latitude = 36.2361;
	KLSV.longitude = 115.034;
	[stationList addObject:KLSV];

	VXReportingStation *KLTS = [VXReportingStation new];
	KLTS.stationIdentifier = @"KLTS";
	KLTS.associatedCity = @"ALTUS";
	KLTS.associatedState = @"OK";
	KLTS.latitude = 34.6503;
	KLTS.longitude = 99.2667;
	[stationList addObject:KLTS];

	VXReportingStation *KLUA = [VXReportingStation new];
	KLUA.stationIdentifier = @"KLUA";
	KLUA.associatedCity = @"LURAY";
	KLUA.associatedState = @"VA";
	KLUA.latitude = 38.6669;
	KLUA.longitude = 78.5006;
	[stationList addObject:KLUA];

	VXReportingStation *KLUD = [VXReportingStation new];
	KLUD.stationIdentifier = @"KLUD";
	KLUD.associatedCity = @"DECATUR";
	KLUD.associatedState = @"TX";
	KLUD.latitude = 33.2542;
	KLUD.longitude = 97.5803;
	[stationList addObject:KLUD];

	VXReportingStation *KLUF = [VXReportingStation new];
	KLUF.stationIdentifier = @"KLUF";
	KLUF.associatedCity = @"GLENDALE";
	KLUF.associatedState = @"AZ";
	KLUF.latitude = 33.535;
	KLUF.longitude = 112.383;
	[stationList addObject:KLUF];

	VXReportingStation *KLUK = [VXReportingStation new];
	KLUK.stationIdentifier = @"KLUK";
	KLUK.associatedCity = @"CINCINNATI";
	KLUK.associatedState = @"OH";
	KLUK.latitude = 39.1033;
	KLUK.longitude = 84.4186;
	[stationList addObject:KLUK];

	VXReportingStation *KLUM = [VXReportingStation new];
	KLUM.stationIdentifier = @"KLUM";
	KLUM.associatedCity = @"MENOMONIE";
	KLUM.associatedState = @"WI";
	KLUM.latitude = 44.8922;
	KLUM.longitude = 91.8678;
	[stationList addObject:KLUM];

	VXReportingStation *KLUX = [VXReportingStation new];
	KLUX.stationIdentifier = @"KLUX";
	KLUX.associatedCity = @"LAURENS";
	KLUX.associatedState = @"SC";
	KLUX.latitude = 34.5069;
	KLUX.longitude = 81.9469;
	[stationList addObject:KLUX];

	VXReportingStation *KLVJ = [VXReportingStation new];
	KLVJ.stationIdentifier = @"KLVJ";
	KLVJ.associatedCity = @"HOUSTON";
	KLVJ.associatedState = @"TX";
	KLVJ.latitude = 29.5211;
	KLVJ.longitude = 95.2419;
	[stationList addObject:KLVJ];

	VXReportingStation *KLVK = [VXReportingStation new];
	KLVK.stationIdentifier = @"KLVK";
	KLVK.associatedCity = @"LIVERMORE";
	KLVK.associatedState = @"CA";
	KLVK.latitude = 37.6933;
	KLVK.longitude = 121.82;
	[stationList addObject:KLVK];

	VXReportingStation *KLVL = [VXReportingStation new];
	KLVL.stationIdentifier = @"KLVL";
	KLVL.associatedCity = @"LAWRENCEVILLE";
	KLVL.associatedState = @"VA";
	KLVL.latitude = 36.7722;
	KLVL.longitude = 77.7925;
	[stationList addObject:KLVL];

	VXReportingStation *KLVM = [VXReportingStation new];
	KLVM.stationIdentifier = @"KLVM";
	KLVM.associatedCity = @"LIVINGSTON";
	KLVM.associatedState = @"MT";
	KLVM.latitude = 45.6992;
	KLVM.longitude = 110.448;
	[stationList addObject:KLVM];

	VXReportingStation *KLVN = [VXReportingStation new];
	KLVN.stationIdentifier = @"KLVN";
	KLVN.associatedCity = @"MINNEAPOLIS";
	KLVN.associatedState = @"MN";
	KLVN.latitude = 44.6278;
	KLVN.longitude = 93.2281;
	[stationList addObject:KLVN];

	VXReportingStation *KLVS = [VXReportingStation new];
	KLVS.stationIdentifier = @"KLVS";
	KLVS.associatedCity = @"LAS VEGAS";
	KLVS.associatedState = @"NM";
	KLVS.latitude = 35.6542;
	KLVS.longitude = 105.142;
	[stationList addObject:KLVS];

	VXReportingStation *KLWA = [VXReportingStation new];
	KLWA.stationIdentifier = @"KLWA";
	KLWA.associatedCity = @"SOUTH HAVEN";
	KLWA.associatedState = @"MI";
	KLWA.latitude = 42.3508;
	KLWA.longitude = 86.2561;
	[stationList addObject:KLWA];

	VXReportingStation *KLWB = [VXReportingStation new];
	KLWB.stationIdentifier = @"KLWB";
	KLWB.associatedCity = @"LEWISBURG";
	KLWB.associatedState = @"WV";
	KLWB.latitude = 37.8581;
	KLWB.longitude = 80.3994;
	[stationList addObject:KLWB];

	VXReportingStation *KLWC = [VXReportingStation new];
	KLWC.stationIdentifier = @"KLWC";
	KLWC.associatedCity = @"LAWRENCE";
	KLWC.associatedState = @"KS";
	KLWC.latitude = 39.0111;
	KLWC.longitude = 95.2167;
	[stationList addObject:KLWC];

	VXReportingStation *KLWD = [VXReportingStation new];
	KLWD.stationIdentifier = @"KLWD";
	KLWD.associatedCity = @"LAMONI";
	KLWD.associatedState = @"IA";
	KLWD.latitude = 40.6331;
	KLWD.longitude = 93.9019;
	[stationList addObject:KLWD];

	VXReportingStation *KLWM = [VXReportingStation new];
	KLWM.stationIdentifier = @"KLWM";
	KLWM.associatedCity = @"LAWRENCE";
	KLWM.associatedState = @"MA";
	KLWM.latitude = 42.7169;
	KLWM.longitude = 71.1233;
	[stationList addObject:KLWM];

	VXReportingStation *KLWS = [VXReportingStation new];
	KLWS.stationIdentifier = @"KLWS";
	KLWS.associatedCity = @"LEWISTON";
	KLWS.associatedState = @"ID";
	KLWS.latitude = 46.3744;
	KLWS.longitude = 117.015;
	[stationList addObject:KLWS];

	VXReportingStation *KLWT = [VXReportingStation new];
	KLWT.stationIdentifier = @"KLWT";
	KLWT.associatedCity = @"LEWISTOWN";
	KLWT.associatedState = @"MT";
	KLWT.latitude = 47.0492;
	KLWT.longitude = 109.467;
	[stationList addObject:KLWT];

	VXReportingStation *KLWV = [VXReportingStation new];
	KLWV.stationIdentifier = @"KLWV";
	KLWV.associatedCity = @"LAWRENCEVILLE";
	KLWV.associatedState = @"IL";
	KLWV.latitude = 38.7642;
	KLWV.longitude = 87.6053;
	[stationList addObject:KLWV];

	VXReportingStation *KLXL = [VXReportingStation new];
	KLXL.stationIdentifier = @"KLXL";
	KLXL.associatedCity = @"LITTLE FALLS";
	KLXL.associatedState = @"MN";
	KLXL.latitude = 45.9494;
	KLXL.longitude = 94.3472;
	[stationList addObject:KLXL];

	VXReportingStation *KLXN = [VXReportingStation new];
	KLXN.stationIdentifier = @"KLXN";
	KLXN.associatedCity = @"LEXINGTON";
	KLXN.associatedState = @"NE";
	KLXN.latitude = 40.7908;
	KLXN.longitude = 99.7772;
	[stationList addObject:KLXN];

	VXReportingStation *KLXT = [VXReportingStation new];
	KLXT.stationIdentifier = @"KLXT";
	KLXT.associatedCity = @"LEE'S SUMMIT";
	KLXT.associatedState = @"MO";
	KLXT.latitude = 38.9594;
	KLXT.longitude = 94.3711;
	[stationList addObject:KLXT];

	VXReportingStation *KLXV = [VXReportingStation new];
	KLXV.stationIdentifier = @"KLXV";
	KLXV.associatedCity = @"LEADVILLE";
	KLXV.associatedState = @"CO";
	KLXV.latitude = 39.22;
	KLXV.longitude = 106.317;
	[stationList addObject:KLXV];

	VXReportingStation *KLXY = [VXReportingStation new];
	KLXY.stationIdentifier = @"KLXY";
	KLXY.associatedCity = @"MEXIA";
	KLXY.associatedState = @"TX";
	KLXY.latitude = 31.6444;
	KLXY.longitude = 96.5119;
	[stationList addObject:KLXY];

	VXReportingStation *KLYH = [VXReportingStation new];
	KLYH.stationIdentifier = @"KLYH";
	KLYH.associatedCity = @"LYNCHBURG";
	KLYH.associatedState = @"VA";
	KLYH.latitude = 37.3267;
	KLYH.longitude = 79.2003;
	[stationList addObject:KLYH];

	VXReportingStation *KLYV = [VXReportingStation new];
	KLYV.stationIdentifier = @"KLYV";
	KLYV.associatedCity = @"LUVERNE";
	KLYV.associatedState = @"MN";
	KLYV.latitude = 43.6211;
	KLYV.longitude = 96.2156;
	[stationList addObject:KLYV];

	VXReportingStation *KLZK = [VXReportingStation new];
	KLZK.stationIdentifier = @"KLZK";
	KLZK.associatedCity = @"NORTH LITTLE ROCK";
	KLZK.associatedState = @"AR";
	KLZK.latitude = 34.8339;
	KLZK.longitude = 92.2572;
	[stationList addObject:KLZK];

	VXReportingStation *KLZU = [VXReportingStation new];
	KLZU.stationIdentifier = @"KLZU";
	KLZU.associatedCity = @"LAWRENCEVILLE";
	KLZU.associatedState = @"GA";
	KLZU.latitude = 33.9781;
	KLZU.longitude = 83.9622;
	[stationList addObject:KLZU];

	VXReportingStation *KLZZ = [VXReportingStation new];
	KLZZ.stationIdentifier = @"KLZZ";
	KLZZ.associatedCity = @"LAMPASAS";
	KLZZ.associatedState = @"TX";
	KLZZ.latitude = 31.1061;
	KLZZ.longitude = 98.1958;
	[stationList addObject:KLZZ];

	VXReportingStation *KM19 = [VXReportingStation new];
	KM19.stationIdentifier = @"KM19";
	KM19.associatedCity = @"NEWPORT";
	KM19.associatedState = @"AR";
	KM19.latitude = 35.6375;
	KM19.longitude = 91.1764;
	[stationList addObject:KM19];

	VXReportingStation *KM30 = [VXReportingStation new];
	KM30.stationIdentifier = @"KM30";
	KM30.associatedCity = @"METROPOLIS";
	KM30.associatedState = @"IL";
	KM30.latitude = 37.1858;
	KM30.longitude = 88.7506;
	[stationList addObject:KM30];

	VXReportingStation *KM40 = [VXReportingStation new];
	KM40.stationIdentifier = @"KM40";
	KM40.associatedCity = @"ABERDEEN/AMORY";
	KM40.associatedState = @"MS";
	KM40.latitude = 33.8736;
	KM40.longitude = 88.4894;
	[stationList addObject:KM40];

	VXReportingStation *KM91 = [VXReportingStation new];
	KM91.stationIdentifier = @"KM91";
	KM91.associatedCity = @"SPRINGFIELD";
	KM91.associatedState = @"TN";
	KM91.latitude = 36.5367;
	KM91.longitude = 86.9211;
	[stationList addObject:KM91];

	VXReportingStation *KMAE = [VXReportingStation new];
	KMAE.stationIdentifier = @"KMAE";
	KMAE.associatedCity = @"MADERA";
	KMAE.associatedState = @"CA";
	KMAE.latitude = 36.9864;
	KMAE.longitude = 120.112;
	[stationList addObject:KMAE];

	VXReportingStation *KMAF = [VXReportingStation new];
	KMAF.stationIdentifier = @"KMAF";
	KMAF.associatedCity = @"MIDLAND";
	KMAF.associatedState = @"TX";
	KMAF.latitude = 31.9425;
	KMAF.longitude = 102.202;
	[stationList addObject:KMAF];

	VXReportingStation *KMAI = [VXReportingStation new];
	KMAI.stationIdentifier = @"KMAI";
	KMAI.associatedCity = @"MARIANNA";
	KMAI.associatedState = @"FL";
	KMAI.latitude = 30.8378;
	KMAI.longitude = 85.1817;
	[stationList addObject:KMAI];

	VXReportingStation *KMAO = [VXReportingStation new];
	KMAO.stationIdentifier = @"KMAO";
	KMAO.associatedCity = @"MARION";
	KMAO.associatedState = @"SC";
	KMAO.latitude = 34.1811;
	KMAO.longitude = 79.3347;
	[stationList addObject:KMAO];

	VXReportingStation *KMBG = [VXReportingStation new];
	KMBG.stationIdentifier = @"KMBG";
	KMBG.associatedCity = @"MOBRIDGE";
	KMBG.associatedState = @"SD";
	KMBG.latitude = 45.5464;
	KMBG.longitude = 100.408;
	[stationList addObject:KMBG];

	VXReportingStation *KMBL = [VXReportingStation new];
	KMBL.stationIdentifier = @"KMBL";
	KMBL.associatedCity = @"MANISTEE";
	KMBL.associatedState = @"MI";
	KMBL.latitude = 44.2722;
	KMBL.longitude = 86.2467;
	[stationList addObject:KMBL];

	VXReportingStation *KMBO = [VXReportingStation new];
	KMBO.stationIdentifier = @"KMBO";
	KMBO.associatedCity = @"MADISON";
	KMBO.associatedState = @"MS";
	KMBO.latitude = 32.4386;
	KMBO.longitude = 90.1031;
	[stationList addObject:KMBO];

	VXReportingStation *KMBS = [VXReportingStation new];
	KMBS.stationIdentifier = @"KMBS";
	KMBS.associatedCity = @"SAGINAW";
	KMBS.associatedState = @"MI";
	KMBS.latitude = 43.5328;
	KMBS.longitude = 84.0794;
	[stationList addObject:KMBS];

	VXReportingStation *KMCB = [VXReportingStation new];
	KMCB.stationIdentifier = @"KMCB";
	KMCB.associatedCity = @"MC COMB";
	KMCB.associatedState = @"MS";
	KMCB.latitude = 31.1783;
	KMCB.longitude = 90.4717;
	[stationList addObject:KMCB];

	VXReportingStation *KMCC = [VXReportingStation new];
	KMCC.stationIdentifier = @"KMCC";
	KMCC.associatedCity = @"SACRAMENTO";
	KMCC.associatedState = @"CA";
	KMCC.latitude = 38.6675;
	KMCC.longitude = 121.401;
	[stationList addObject:KMCC];

	VXReportingStation *KMCD = [VXReportingStation new];
	KMCD.stationIdentifier = @"KMCD";
	KMCD.associatedCity = @"MACKINAC ISLAND";
	KMCD.associatedState = @"MI";
	KMCD.latitude = 45.8647;
	KMCD.longitude = 84.6372;
	[stationList addObject:KMCD];

	VXReportingStation *KMCE = [VXReportingStation new];
	KMCE.stationIdentifier = @"KMCE";
	KMCE.associatedCity = @"MERCED";
	KMCE.associatedState = @"CA";
	KMCE.latitude = 37.2847;
	KMCE.longitude = 120.514;
	[stationList addObject:KMCE];

	VXReportingStation *KMCF = [VXReportingStation new];
	KMCF.stationIdentifier = @"KMCF";
	KMCF.associatedCity = @"TAMPA";
	KMCF.associatedState = @"FL";
	KMCF.latitude = 27.8492;
	KMCF.longitude = 82.5211;
	[stationList addObject:KMCF];

	VXReportingStation *KMCI = [VXReportingStation new];
	KMCI.stationIdentifier = @"KMCI";
	KMCI.associatedCity = @"KANSAS CITY";
	KMCI.associatedState = @"MO";
	KMCI.latitude = 39.2975;
	KMCI.longitude = 94.7139;
	[stationList addObject:KMCI];

	VXReportingStation *KMCK = [VXReportingStation new];
	KMCK.stationIdentifier = @"KMCK";
	KMCK.associatedCity = @"MC COOK";
	KMCK.associatedState = @"NE";
	KMCK.latitude = 40.2061;
	KMCK.longitude = 100.592;
	[stationList addObject:KMCK];

	VXReportingStation *KMCN = [VXReportingStation new];
	KMCN.stationIdentifier = @"KMCN";
	KMCN.associatedCity = @"MACON";
	KMCN.associatedState = @"GA";
	KMCN.latitude = 32.6928;
	KMCN.longitude = 83.6492;
	[stationList addObject:KMCN];

	VXReportingStation *KMCO = [VXReportingStation new];
	KMCO.stationIdentifier = @"KMCO";
	KMCO.associatedCity = @"ORLANDO";
	KMCO.associatedState = @"FL";
	KMCO.latitude = 28.4292;
	KMCO.longitude = 81.3089;
	[stationList addObject:KMCO];

	VXReportingStation *KMCW = [VXReportingStation new];
	KMCW.stationIdentifier = @"KMCW";
	KMCW.associatedCity = @"MASON CITY";
	KMCW.associatedState = @"IA";
	KMCW.latitude = 43.1578;
	KMCW.longitude = 93.3311;
	[stationList addObject:KMCW];

	VXReportingStation *KMCX = [VXReportingStation new];
	KMCX.stationIdentifier = @"KMCX";
	KMCX.associatedCity = @"MONTICELLO";
	KMCX.associatedState = @"IN";
	KMCX.latitude = 40.7125;
	KMCX.longitude = 86.7647;
	[stationList addObject:KMCX];

	VXReportingStation *KMDD = [VXReportingStation new];
	KMDD.stationIdentifier = @"KMDD";
	KMDD.associatedCity = @"MIDLAND";
	KMDD.associatedState = @"TX";
	KMDD.latitude = 32.0364;
	KMDD.longitude = 102.101;
	[stationList addObject:KMDD];

	VXReportingStation *KMDH = [VXReportingStation new];
	KMDH.stationIdentifier = @"KMDH";
	KMDH.associatedCity = @"CARBONDALE/MURPHYSBORO";
	KMDH.associatedState = @"IL";
	KMDH.latitude = 37.7781;
	KMDH.longitude = 89.2519;
	[stationList addObject:KMDH];

	VXReportingStation *KMDJ = [VXReportingStation new];
	KMDJ.stationIdentifier = @"KMDJ";
	KMDJ.associatedCity = @"MISSISSIPPI CANYON";
	KMDJ.associatedState = @"LA";
	KMDJ.latitude = 28.6425;
	KMDJ.longitude = 89.7942;
	[stationList addObject:KMDJ];

	VXReportingStation *KMDQ = [VXReportingStation new];
	KMDQ.stationIdentifier = @"KMDQ";
	KMDQ.associatedCity = @"HUNTSVILLE";
	KMDQ.associatedState = @"AL";
	KMDQ.latitude = 34.8614;
	KMDQ.longitude = 86.5572;
	[stationList addObject:KMDQ];

	VXReportingStation *KMDT = [VXReportingStation new];
	KMDT.stationIdentifier = @"KMDT";
	KMDT.associatedCity = @"HARRISBURG";
	KMDT.associatedState = @"PA";
	KMDT.latitude = 40.1933;
	KMDT.longitude = 76.7633;
	[stationList addObject:KMDT];

	VXReportingStation *KMDW = [VXReportingStation new];
	KMDW.stationIdentifier = @"KMDW";
	KMDW.associatedCity = @"CHICAGO";
	KMDW.associatedState = @"IL";
	KMDW.latitude = 41.7858;
	KMDW.longitude = 87.7522;
	[stationList addObject:KMDW];

	VXReportingStation *KMDZ = [VXReportingStation new];
	KMDZ.stationIdentifier = @"KMDZ";
	KMDZ.associatedCity = @"MEDFORD";
	KMDZ.associatedState = @"WI";
	KMDZ.latitude = 45.1008;
	KMDZ.longitude = 90.3033;
	[stationList addObject:KMDZ];

	VXReportingStation *KMEB = [VXReportingStation new];
	KMEB.stationIdentifier = @"KMEB";
	KMEB.associatedCity = @"MAXTON";
	KMEB.associatedState = @"NC";
	KMEB.latitude = 34.7917;
	KMEB.longitude = 79.3658;
	[stationList addObject:KMEB];

	VXReportingStation *KMEI = [VXReportingStation new];
	KMEI.stationIdentifier = @"KMEI";
	KMEI.associatedCity = @"MERIDIAN";
	KMEI.associatedState = @"MS";
	KMEI.latitude = 32.3331;
	KMEI.longitude = 88.7511;
	[stationList addObject:KMEI];

	VXReportingStation *KMEM = [VXReportingStation new];
	KMEM.stationIdentifier = @"KMEM";
	KMEM.associatedCity = @"MEMPHIS";
	KMEM.associatedState = @"TN";
	KMEM.latitude = 35.0422;
	KMEM.longitude = 89.9767;
	[stationList addObject:KMEM];

	VXReportingStation *KMER = [VXReportingStation new];
	KMER.stationIdentifier = @"KMER";
	KMER.associatedCity = @"ATWATER";
	KMER.associatedState = @"CA";
	KMER.latitude = 37.3803;
	KMER.longitude = 120.568;
	[stationList addObject:KMER];

	VXReportingStation *KMEV = [VXReportingStation new];
	KMEV.stationIdentifier = @"KMEV";
	KMEV.associatedCity = @"MINDEN";
	KMEV.associatedState = @"NV";
	KMEV.latitude = 39.0003;
	KMEV.longitude = 119.751;
	[stationList addObject:KMEV];

	VXReportingStation *KMEZ = [VXReportingStation new];
	KMEZ.stationIdentifier = @"KMEZ";
	KMEZ.associatedCity = @"MENA";
	KMEZ.associatedState = @"AR";
	KMEZ.latitude = 34.5453;
	KMEZ.longitude = 94.2025;
	[stationList addObject:KMEZ];

	VXReportingStation *KMFD = [VXReportingStation new];
	KMFD.stationIdentifier = @"KMFD";
	KMFD.associatedCity = @"MANSFIELD";
	KMFD.associatedState = @"OH";
	KMFD.latitude = 40.8214;
	KMFD.longitude = 82.5164;
	[stationList addObject:KMFD];

	VXReportingStation *KMFE = [VXReportingStation new];
	KMFE.stationIdentifier = @"KMFE";
	KMFE.associatedCity = @"MC ALLEN";
	KMFE.associatedState = @"TX";
	KMFE.latitude = 26.1758;
	KMFE.longitude = 98.2386;
	[stationList addObject:KMFE];

	VXReportingStation *KMFI = [VXReportingStation new];
	KMFI.stationIdentifier = @"KMFI";
	KMFI.associatedCity = @"MARSHFIELD";
	KMFI.associatedState = @"WI";
	KMFI.latitude = 44.6367;
	KMFI.longitude = 90.1892;
	[stationList addObject:KMFI];

	VXReportingStation *KMFR = [VXReportingStation new];
	KMFR.stationIdentifier = @"KMFR";
	KMFR.associatedCity = @"MEDFORD";
	KMFR.associatedState = @"OR";
	KMFR.latitude = 42.3742;
	KMFR.longitude = 122.873;
	[stationList addObject:KMFR];

	VXReportingStation *KMFV = [VXReportingStation new];
	KMFV.stationIdentifier = @"KMFV";
	KMFV.associatedCity = @"MELFA";
	KMFV.associatedState = @"VA";
	KMFV.latitude = 37.6467;
	KMFV.longitude = 75.7608;
	[stationList addObject:KMFV];

	VXReportingStation *KMGC = [VXReportingStation new];
	KMGC.stationIdentifier = @"KMGC";
	KMGC.associatedCity = @"MICHIGAN CITY";
	KMGC.associatedState = @"IN";
	KMGC.latitude = 41.7031;
	KMGC.longitude = 86.8211;
	[stationList addObject:KMGC];

	VXReportingStation *KMGE = [VXReportingStation new];
	KMGE.stationIdentifier = @"KMGE";
	KMGE.associatedCity = @"MARIETTA";
	KMGE.associatedState = @"GA";
	KMGE.latitude = 33.9153;
	KMGE.longitude = 84.5161;
	[stationList addObject:KMGE];

	VXReportingStation *KMGJ = [VXReportingStation new];
	KMGJ.stationIdentifier = @"KMGJ";
	KMGJ.associatedCity = @"MONTGOMERY";
	KMGJ.associatedState = @"NY";
	KMGJ.latitude = 41.5097;
	KMGJ.longitude = 74.2644;
	[stationList addObject:KMGJ];

	VXReportingStation *KMGM = [VXReportingStation new];
	KMGM.stationIdentifier = @"KMGM";
	KMGM.associatedCity = @"MONTGOMERY";
	KMGM.associatedState = @"AL";
	KMGM.latitude = 32.3006;
	KMGM.longitude = 86.3939;
	[stationList addObject:KMGM];

	VXReportingStation *KMGN = [VXReportingStation new];
	KMGN.stationIdentifier = @"KMGN";
	KMGN.associatedCity = @"HARBOR SPRINGS";
	KMGN.associatedState = @"MI";
	KMGN.latitude = 45.4253;
	KMGN.longitude = 84.9133;
	[stationList addObject:KMGN];

	VXReportingStation *KMGR = [VXReportingStation new];
	KMGR.stationIdentifier = @"KMGR";
	KMGR.associatedCity = @"MOULTRIE";
	KMGR.associatedState = @"GA";
	KMGR.latitude = 31.0847;
	KMGR.longitude = 83.8031;
	[stationList addObject:KMGR];

	VXReportingStation *KMGW = [VXReportingStation new];
	KMGW.stationIdentifier = @"KMGW";
	KMGW.associatedCity = @"MORGANTOWN";
	KMGW.associatedState = @"WV";
	KMGW.latitude = 39.6428;
	KMGW.longitude = 79.9161;
	[stationList addObject:KMGW];

	VXReportingStation *KMGY = [VXReportingStation new];
	KMGY.stationIdentifier = @"KMGY";
	KMGY.associatedCity = @"DAYTON";
	KMGY.associatedState = @"OH";
	KMGY.latitude = 39.5889;
	KMGY.longitude = 84.2247;
	[stationList addObject:KMGY];

	VXReportingStation *KMHE = [VXReportingStation new];
	KMHE.stationIdentifier = @"KMHE";
	KMHE.associatedCity = @"MITCHELL";
	KMHE.associatedState = @"SD";
	KMHE.latitude = 43.7747;
	KMHE.longitude = 98.0386;
	[stationList addObject:KMHE];

	VXReportingStation *KMHK = [VXReportingStation new];
	KMHK.stationIdentifier = @"KMHK";
	KMHK.associatedCity = @"MANHATTAN";
	KMHK.associatedState = @"KS";
	KMHK.latitude = 39.1408;
	KMHK.longitude = 96.6706;
	[stationList addObject:KMHK];

	VXReportingStation *KMHL = [VXReportingStation new];
	KMHL.stationIdentifier = @"KMHL";
	KMHL.associatedCity = @"MARSHALL";
	KMHL.associatedState = @"MO";
	KMHL.latitude = 39.0953;
	KMHL.longitude = 93.2028;
	[stationList addObject:KMHL];

	VXReportingStation *KMHR = [VXReportingStation new];
	KMHR.stationIdentifier = @"KMHR";
	KMHR.associatedCity = @"SACRAMENTO";
	KMHR.associatedState = @"CA";
	KMHR.latitude = 38.5539;
	KMHR.longitude = 121.297;
	[stationList addObject:KMHR];

	VXReportingStation *KMHS = [VXReportingStation new];
	KMHS.stationIdentifier = @"KMHS";
	KMHS.associatedCity = @"MOUNT SHASTA";
	KMHS.associatedState = @"CA";
	KMHS.latitude = 41.3164;
	KMHS.longitude = 122.318;
	[stationList addObject:KMHS];

	VXReportingStation *KMHT = [VXReportingStation new];
	KMHT.stationIdentifier = @"KMHT";
	KMHT.associatedCity = @"MANCHESTER";
	KMHT.associatedState = @"NH";
	KMHT.latitude = 42.9325;
	KMHT.longitude = 71.4356;
	[stationList addObject:KMHT];

	VXReportingStation *KMHV = [VXReportingStation new];
	KMHV.stationIdentifier = @"KMHV";
	KMHV.associatedCity = @"MOJAVE";
	KMHV.associatedState = @"CA";
	KMHV.latitude = 35.0592;
	KMHV.longitude = 118.152;
	[stationList addObject:KMHV];

	VXReportingStation *KMIA = [VXReportingStation new];
	KMIA.stationIdentifier = @"KMIA";
	KMIA.associatedCity = @"MIAMI";
	KMIA.associatedState = @"FL";
	KMIA.latitude = 25.7931;
	KMIA.longitude = 80.2906;
	[stationList addObject:KMIA];

	VXReportingStation *KMIB = [VXReportingStation new];
	KMIB.stationIdentifier = @"KMIB";
	KMIB.associatedCity = @"MINOT";
	KMIB.associatedState = @"ND";
	KMIB.latitude = 48.4153;
	KMIB.longitude = 101.357;
	[stationList addObject:KMIB];

	VXReportingStation *KMIC = [VXReportingStation new];
	KMIC.stationIdentifier = @"KMIC";
	KMIC.associatedCity = @"MINNEAPOLIS";
	KMIC.associatedState = @"MN";
	KMIC.latitude = 45.0619;
	KMIC.longitude = 93.3539;
	[stationList addObject:KMIC];

	VXReportingStation *KMIE = [VXReportingStation new];
	KMIE.stationIdentifier = @"KMIE";
	KMIE.associatedCity = @"MUNCIE";
	KMIE.associatedState = @"IN";
	KMIE.latitude = 40.2422;
	KMIE.longitude = 85.3958;
	[stationList addObject:KMIE];

	VXReportingStation *KMIS = [VXReportingStation new];
	KMIS.stationIdentifier = @"KMIS";
	KMIS.associatedCity = @"MAIN PASS";
	KMIS.associatedState = @"MS";
	KMIS.latitude = 29.2956;
	KMIS.longitude = 88.8422;
	[stationList addObject:KMIS];

	VXReportingStation *KMIU = [VXReportingStation new];
	KMIU.stationIdentifier = @"KMIU";
	KMIU.associatedCity = @"MUSTANG ISLAND 31";
	KMIU.associatedState = @"TX";
	KMIU.latitude = 27.2889;
	KMIU.longitude = 96.7367;
	[stationList addObject:KMIU];

	VXReportingStation *KMIV = [VXReportingStation new];
	KMIV.stationIdentifier = @"KMIV";
	KMIV.associatedCity = @"MILLVILLE";
	KMIV.associatedState = @"NJ";
	KMIV.latitude = 39.3678;
	KMIV.longitude = 75.0722;
	[stationList addObject:KMIV];

	VXReportingStation *KMIW = [VXReportingStation new];
	KMIW.stationIdentifier = @"KMIW";
	KMIW.associatedCity = @"MARSHALLTOWN";
	KMIW.associatedState = @"IA";
	KMIW.latitude = 42.1125;
	KMIW.longitude = 92.9178;
	[stationList addObject:KMIW];

	VXReportingStation *KMJQ = [VXReportingStation new];
	KMJQ.stationIdentifier = @"KMJQ";
	KMJQ.associatedCity = @"JACKSON";
	KMJQ.associatedState = @"MN";
	KMJQ.latitude = 43.65;
	KMJQ.longitude = 94.9864;
	[stationList addObject:KMJQ];

	VXReportingStation *KMJX = [VXReportingStation new];
	KMJX.stationIdentifier = @"KMJX";
	KMJX.associatedCity = @"TOMS RIVER";
	KMJX.associatedState = @"NJ";
	KMJX.latitude = 39.9272;
	KMJX.longitude = 74.2922;
	[stationList addObject:KMJX];

	VXReportingStation *KMKC = [VXReportingStation new];
	KMKC.stationIdentifier = @"KMKC";
	KMKC.associatedCity = @"KANSAS CITY";
	KMKC.associatedState = @"MO";
	KMKC.latitude = 39.1231;
	KMKC.longitude = 94.5925;
	[stationList addObject:KMKC];

	VXReportingStation *KMKE = [VXReportingStation new];
	KMKE.stationIdentifier = @"KMKE";
	KMKE.associatedCity = @"MILWAUKEE";
	KMKE.associatedState = @"WI";
	KMKE.latitude = 42.9472;
	KMKE.longitude = 87.8964;
	[stationList addObject:KMKE];

	VXReportingStation *KMKG = [VXReportingStation new];
	KMKG.stationIdentifier = @"KMKG";
	KMKG.associatedCity = @"MUSKEGON";
	KMKG.associatedState = @"MI";
	KMKG.latitude = 43.1694;
	KMKG.longitude = 86.2381;
	[stationList addObject:KMKG];

	VXReportingStation *KMKJ = [VXReportingStation new];
	KMKJ.stationIdentifier = @"KMKJ";
	KMKJ.associatedCity = @"MARION/WYTHEVILLE";
	KMKJ.associatedState = @"VA";
	KMKJ.latitude = 36.8947;
	KMKJ.longitude = 81.3497;
	[stationList addObject:KMKJ];

	VXReportingStation *KMKL = [VXReportingStation new];
	KMKL.stationIdentifier = @"KMKL";
	KMKL.associatedCity = @"JACKSON";
	KMKL.associatedState = @"TN";
	KMKL.latitude = 35.5997;
	KMKL.longitude = 88.9156;
	[stationList addObject:KMKL];

	VXReportingStation *KMKN = [VXReportingStation new];
	KMKN.stationIdentifier = @"KMKN";
	KMKN.associatedCity = @"COMANCHE";
	KMKN.associatedState = @"TX";
	KMKN.latitude = 31.9167;
	KMKN.longitude = 98.6003;
	[stationList addObject:KMKN];

	VXReportingStation *KMKO = [VXReportingStation new];
	KMKO.stationIdentifier = @"KMKO";
	KMKO.associatedCity = @"MUSKOGEE";
	KMKO.associatedState = @"OK";
	KMKO.latitude = 35.6564;
	KMKO.longitude = 95.3664;
	[stationList addObject:KMKO];

	VXReportingStation *KMKS = [VXReportingStation new];
	KMKS.stationIdentifier = @"KMKS";
	KMKS.associatedCity = @"MONCKS CORNER";
	KMKS.associatedState = @"SC";
	KMKS.latitude = 33.1853;
	KMKS.longitude = 80.0361;
	[stationList addObject:KMKS];

	VXReportingStation *KMKT = [VXReportingStation new];
	KMKT.stationIdentifier = @"KMKT";
	KMKT.associatedCity = @"MANKATO";
	KMKT.associatedState = @"MN";
	KMKT.latitude = 44.2214;
	KMKT.longitude = 93.9186;
	[stationList addObject:KMKT];

	VXReportingStation *KMKY = [VXReportingStation new];
	KMKY.stationIdentifier = @"KMKY";
	KMKY.associatedCity = @"MARCO ISLAND";
	KMKY.associatedState = @"FL";
	KMKY.latitude = 25.995;
	KMKY.longitude = 81.6725;
	[stationList addObject:KMKY];

	VXReportingStation *KMLB = [VXReportingStation new];
	KMLB.stationIdentifier = @"KMLB";
	KMLB.associatedCity = @"MELBOURNE";
	KMLB.associatedState = @"FL";
	KMLB.latitude = 28.1025;
	KMLB.longitude = 80.645;
	[stationList addObject:KMLB];

	VXReportingStation *KMLC = [VXReportingStation new];
	KMLC.stationIdentifier = @"KMLC";
	KMLC.associatedCity = @"MC ALESTER";
	KMLC.associatedState = @"OK";
	KMLC.latitude = 34.8822;
	KMLC.longitude = 95.7833;
	[stationList addObject:KMLC];

	VXReportingStation *KMLD = [VXReportingStation new];
	KMLD.stationIdentifier = @"KMLD";
	KMLD.associatedCity = @"MALAD CITY";
	KMLD.associatedState = @"ID";
	KMLD.latitude = 42.1664;
	KMLD.longitude = 112.296;
	[stationList addObject:KMLD];

	VXReportingStation *KMLE = [VXReportingStation new];
	KMLE.stationIdentifier = @"KMLE";
	KMLE.associatedCity = @"OMAHA";
	KMLE.associatedState = @"NE";
	KMLE.latitude = 41.1958;
	KMLE.longitude = 96.1122;
	[stationList addObject:KMLE];

	VXReportingStation *KMLF = [VXReportingStation new];
	KMLF.stationIdentifier = @"KMLF";
	KMLF.associatedCity = @"MILFORD";
	KMLF.associatedState = @"UT";
	KMLF.latitude = 38.4264;
	KMLF.longitude = 113.012;
	[stationList addObject:KMLF];

	VXReportingStation *KMLI = [VXReportingStation new];
	KMLI.stationIdentifier = @"KMLI";
	KMLI.associatedCity = @"MOLINE";
	KMLI.associatedState = @"IL";
	KMLI.latitude = 41.4483;
	KMLI.longitude = 90.5075;
	[stationList addObject:KMLI];

	VXReportingStation *KMLJ = [VXReportingStation new];
	KMLJ.stationIdentifier = @"KMLJ";
	KMLJ.associatedCity = @"MILLEDGEVILLE";
	KMLJ.associatedState = @"GA";
	KMLJ.latitude = 33.1542;
	KMLJ.longitude = 83.2406;
	[stationList addObject:KMLJ];

	VXReportingStation *KMLS = [VXReportingStation new];
	KMLS.stationIdentifier = @"KMLS";
	KMLS.associatedCity = @"MILES CITY";
	KMLS.associatedState = @"MT";
	KMLS.latitude = 46.4278;
	KMLS.longitude = 105.886;
	[stationList addObject:KMLS];

	VXReportingStation *KMLT = [VXReportingStation new];
	KMLT.stationIdentifier = @"KMLT";
	KMLT.associatedCity = @"MILLINOCKET";
	KMLT.associatedState = @"ME";
	KMLT.latitude = 45.6478;
	KMLT.longitude = 68.6856;
	[stationList addObject:KMLT];

	VXReportingStation *KMLU = [VXReportingStation new];
	KMLU.stationIdentifier = @"KMLU";
	KMLU.associatedCity = @"MONROE";
	KMLU.associatedState = @"LA";
	KMLU.latitude = 32.5108;
	KMLU.longitude = 92.0375;
	[stationList addObject:KMLU];

	VXReportingStation *KMMH = [VXReportingStation new];
	KMMH.stationIdentifier = @"KMMH";
	KMMH.associatedCity = @"MAMMOTH LAKES";
	KMMH.associatedState = @"CA";
	KMMH.latitude = 37.6239;
	KMMH.longitude = 118.837;
	[stationList addObject:KMMH];

	VXReportingStation *KMMK = [VXReportingStation new];
	KMMK.stationIdentifier = @"KMMK";
	KMMK.associatedCity = @"MERIDEN";
	KMMK.associatedState = @"CT";
	KMMK.latitude = 41.5086;
	KMMK.longitude = 72.8294;
	[stationList addObject:KMMK];

	VXReportingStation *KMML = [VXReportingStation new];
	KMML.stationIdentifier = @"KMML";
	KMML.associatedCity = @"MARSHALL";
	KMML.associatedState = @"MN";
	KMML.latitude = 44.45;
	KMML.longitude = 95.8222;
	[stationList addObject:KMML];

	VXReportingStation *KMMO = [VXReportingStation new];
	KMMO.stationIdentifier = @"KMMO";
	KMMO.associatedCity = @"MARSEILLES";
	KMMO.associatedState = @"IL";
	KMMO.latitude = 41.3667;
	KMMO.longitude = 88.6833;
	[stationList addObject:KMMO];

	VXReportingStation *KMMT = [VXReportingStation new];
	KMMT.stationIdentifier = @"KMMT";
	KMMT.associatedCity = @"EASTOVER";
	KMMT.associatedState = @"SC";
	KMMT.latitude = 33.9181;
	KMMT.longitude = 80.7997;
	[stationList addObject:KMMT];

	VXReportingStation *KMMU = [VXReportingStation new];
	KMMU.stationIdentifier = @"KMMU";
	KMMU.associatedCity = @"MORRISTOWN";
	KMMU.associatedState = @"NJ";
	KMMU.latitude = 40.7992;
	KMMU.longitude = 74.4147;
	[stationList addObject:KMMU];

	VXReportingStation *KMMV = [VXReportingStation new];
	KMMV.stationIdentifier = @"KMMV";
	KMMV.associatedCity = @"MC MINNVILLE";
	KMMV.associatedState = @"OR";
	KMMV.latitude = 45.1944;
	KMMV.longitude = 123.136;
	[stationList addObject:KMMV];

	VXReportingStation *KMNE = [VXReportingStation new];
	KMNE.stationIdentifier = @"KMNE";
	KMNE.associatedCity = @"MINDEN";
	KMNE.associatedState = @"LA";
	KMNE.latitude = 32.6431;
	KMNE.longitude = 93.2969;
	[stationList addObject:KMNE];

	VXReportingStation *KMNH = [VXReportingStation new];
	KMNH.stationIdentifier = @"KMNH";
	KMNH.associatedCity = @"MONUMENT HILL";
	KMNH.associatedState = @"CO";
	KMNH.latitude = 39.2189;
	KMNH.longitude = 104.641;
	[stationList addObject:KMNH];

	VXReportingStation *KMNI = [VXReportingStation new];
	KMNI.stationIdentifier = @"KMNI";
	KMNI.associatedCity = @"MANNING";
	KMNI.associatedState = @"SC";
	KMNI.latitude = 33.5869;
	KMNI.longitude = 80.2086;
	[stationList addObject:KMNI];

	VXReportingStation *KMNM = [VXReportingStation new];
	KMNM.stationIdentifier = @"KMNM";
	KMNM.associatedCity = @"MENOMINEE";
	KMNM.associatedState = @"MI";
	KMNM.latitude = 45.1264;
	KMNM.longitude = 87.6383;
	[stationList addObject:KMNM];

	VXReportingStation *KMNN = [VXReportingStation new];
	KMNN.stationIdentifier = @"KMNN";
	KMNN.associatedCity = @"MARION";
	KMNN.associatedState = @"OH";
	KMNN.latitude = 40.6164;
	KMNN.longitude = 83.0636;
	[stationList addObject:KMNN];

	VXReportingStation *KMNZ = [VXReportingStation new];
	KMNZ.stationIdentifier = @"KMNZ";
	KMNZ.associatedCity = @"HAMILTON";
	KMNZ.associatedState = @"TX";
	KMNZ.latitude = 31.6658;
	KMNZ.longitude = 98.1486;
	[stationList addObject:KMNZ];

	VXReportingStation *KMOB = [VXReportingStation new];
	KMOB.stationIdentifier = @"KMOB";
	KMOB.associatedCity = @"MOBILE";
	KMOB.associatedState = @"AL";
	KMOB.latitude = 30.6914;
	KMOB.longitude = 88.2428;
	[stationList addObject:KMOB];

	VXReportingStation *KMOD = [VXReportingStation new];
	KMOD.stationIdentifier = @"KMOD";
	KMOD.associatedCity = @"MODESTO";
	KMOD.associatedState = @"CA";
	KMOD.latitude = 37.6256;
	KMOD.longitude = 120.954;
	[stationList addObject:KMOD];

	VXReportingStation *KMOP = [VXReportingStation new];
	KMOP.stationIdentifier = @"KMOP";
	KMOP.associatedCity = @"MOUNT PLEASANT";
	KMOP.associatedState = @"MI";
	KMOP.latitude = 43.6217;
	KMOP.longitude = 84.7372;
	[stationList addObject:KMOP];

	VXReportingStation *KMOR = [VXReportingStation new];
	KMOR.stationIdentifier = @"KMOR";
	KMOR.associatedCity = @"MORRISTOWN";
	KMOR.associatedState = @"TN";
	KMOR.latitude = 36.1744;
	KMOR.longitude = 83.3853;
	[stationList addObject:KMOR];

	VXReportingStation *KMOT = [VXReportingStation new];
	KMOT.stationIdentifier = @"KMOT";
	KMOT.associatedCity = @"MINOT";
	KMOT.associatedState = @"ND";
	KMOT.latitude = 48.2592;
	KMOT.longitude = 101.28;
	[stationList addObject:KMOT];

	VXReportingStation *KMOX = [VXReportingStation new];
	KMOX.stationIdentifier = @"KMOX";
	KMOX.associatedCity = @"MORRIS";
	KMOX.associatedState = @"MN";
	KMOX.latitude = 45.5658;
	KMOX.longitude = 95.9669;
	[stationList addObject:KMOX];

	VXReportingStation *KMPO = [VXReportingStation new];
	KMPO.stationIdentifier = @"KMPO";
	KMPO.associatedCity = @"MOUNT POCONO";
	KMPO.associatedState = @"PA";
	KMPO.latitude = 41.1375;
	KMPO.longitude = 75.38;
	[stationList addObject:KMPO];

	VXReportingStation *KMPV = [VXReportingStation new];
	KMPV.stationIdentifier = @"KMPV";
	KMPV.associatedCity = @"BARRE/MONTPELIER";
	KMPV.associatedState = @"VT";
	KMPV.latitude = 44.2033;
	KMPV.longitude = 72.5622;
	[stationList addObject:KMPV];

	VXReportingStation *KMPZ = [VXReportingStation new];
	KMPZ.stationIdentifier = @"KMPZ";
	KMPZ.associatedCity = @"MOUNT PLEASANT";
	KMPZ.associatedState = @"IA";
	KMPZ.latitude = 40.9464;
	KMPZ.longitude = 91.5108;
	[stationList addObject:KMPZ];

	VXReportingStation *KMQB = [VXReportingStation new];
	KMQB.stationIdentifier = @"KMQB";
	KMQB.associatedCity = @"MACOMB";
	KMQB.associatedState = @"IL";
	KMQB.latitude = 40.52;
	KMQB.longitude = 90.6522;
	[stationList addObject:KMQB];

	VXReportingStation *KMQI = [VXReportingStation new];
	KMQI.stationIdentifier = @"KMQI";
	KMQI.associatedCity = @"MANTEO";
	KMQI.associatedState = @"NC";
	KMQI.latitude = 35.9189;
	KMQI.longitude = 75.6953;
	[stationList addObject:KMQI];

	VXReportingStation *KMQJ = [VXReportingStation new];
	KMQJ.stationIdentifier = @"KMQJ";
	KMQJ.associatedCity = @"INDIANAPOLIS";
	KMQJ.associatedState = @"IN";
	KMQJ.latitude = 39.8433;
	KMQJ.longitude = 85.8969;
	[stationList addObject:KMQJ];

	VXReportingStation *KMQS = [VXReportingStation new];
	KMQS.stationIdentifier = @"KMQS";
	KMQS.associatedCity = @"COATESVILLE";
	KMQS.associatedState = @"PA";
	KMQS.latitude = 39.9789;
	KMQS.longitude = 75.8653;
	[stationList addObject:KMQS];

	VXReportingStation *KMQY = [VXReportingStation new];
	KMQY.stationIdentifier = @"KMQY";
	KMQY.associatedCity = @"SMYRNA";
	KMQY.associatedState = @"TN";
	KMQY.latitude = 36.0089;
	KMQY.longitude = 86.52;
	[stationList addObject:KMQY];

	VXReportingStation *KMRB = [VXReportingStation new];
	KMRB.stationIdentifier = @"KMRB";
	KMRB.associatedCity = @"MARTINSBURG";
	KMRB.associatedState = @"WV";
	KMRB.latitude = 39.4017;
	KMRB.longitude = 77.9844;
	[stationList addObject:KMRB];

	VXReportingStation *KMRC = [VXReportingStation new];
	KMRC.stationIdentifier = @"KMRC";
	KMRC.associatedCity = @"COLUMBIA/MOUNT PLEASANT";
	KMRC.associatedState = @"TN";
	KMRC.latitude = 35.5542;
	KMRC.longitude = 87.1789;
	[stationList addObject:KMRC];

	VXReportingStation *KMRF = [VXReportingStation new];
	KMRF.stationIdentifier = @"KMRF";
	KMRF.associatedCity = @"MARFA";
	KMRF.associatedState = @"TX";
	KMRF.latitude = 30.3708;
	KMRF.longitude = 104.017;
	[stationList addObject:KMRF];

	VXReportingStation *KMRH = [VXReportingStation new];
	KMRH.stationIdentifier = @"KMRH";
	KMRH.associatedCity = @"BEAUFORT";
	KMRH.associatedState = @"NC";
	KMRH.latitude = 34.7333;
	KMRH.longitude = 76.6606;
	[stationList addObject:KMRH];

	VXReportingStation *KMRJ = [VXReportingStation new];
	KMRJ.stationIdentifier = @"KMRJ";
	KMRJ.associatedCity = @"MINERAL POINT";
	KMRJ.associatedState = @"WI";
	KMRJ.latitude = 42.8867;
	KMRJ.longitude = 90.2361;
	[stationList addObject:KMRJ];

	VXReportingStation *KMRY = [VXReportingStation new];
	KMRY.stationIdentifier = @"KMRY";
	KMRY.associatedCity = @"MONTEREY";
	KMRY.associatedState = @"CA";
	KMRY.latitude = 36.5903;
	KMRY.longitude = 121.849;
	[stationList addObject:KMRY];

	VXReportingStation *KMSL = [VXReportingStation new];
	KMSL.stationIdentifier = @"KMSL";
	KMSL.associatedCity = @"MUSCLE SHOALS";
	KMSL.associatedState = @"AL";
	KMSL.latitude = 34.7453;
	KMSL.longitude = 87.61;
	[stationList addObject:KMSL];

	VXReportingStation *KMSN = [VXReportingStation new];
	KMSN.stationIdentifier = @"KMSN";
	KMSN.associatedCity = @"MADISON";
	KMSN.associatedState = @"WI";
	KMSN.latitude = 43.1397;
	KMSN.longitude = 89.3375;
	[stationList addObject:KMSN];

	VXReportingStation *KMSO = [VXReportingStation new];
	KMSO.stationIdentifier = @"KMSO";
	KMSO.associatedCity = @"MISSOULA";
	KMSO.associatedState = @"MT";
	KMSO.latitude = 46.9161;
	KMSO.longitude = 114.091;
	[stationList addObject:KMSO];

	VXReportingStation *KMSP = [VXReportingStation new];
	KMSP.stationIdentifier = @"KMSP";
	KMSP.associatedCity = @"MINNEAPOLIS";
	KMSP.associatedState = @"MN";
	KMSP.latitude = 44.8831;
	KMSP.longitude = 93.2167;
	[stationList addObject:KMSP];

	VXReportingStation *KMSS = [VXReportingStation new];
	KMSS.stationIdentifier = @"KMSS";
	KMSS.associatedCity = @"MASSENA";
	KMSS.associatedState = @"NY";
	KMSS.latitude = 44.9358;
	KMSS.longitude = 74.8456;
	[stationList addObject:KMSS];

	VXReportingStation *KMSV = [VXReportingStation new];
	KMSV.stationIdentifier = @"KMSV";
	KMSV.associatedCity = @"MONTICELLO";
	KMSV.associatedState = @"NY";
	KMSV.latitude = 41.7014;
	KMSV.longitude = 74.795;
	[stationList addObject:KMSV];

	VXReportingStation *KMSY = [VXReportingStation new];
	KMSY.stationIdentifier = @"KMSY";
	KMSY.associatedCity = @"NEW ORLEANS";
	KMSY.associatedState = @"LA";
	KMSY.latitude = 29.9933;
	KMSY.longitude = 90.2578;
	[stationList addObject:KMSY];

	VXReportingStation *KMTC = [VXReportingStation new];
	KMTC.stationIdentifier = @"KMTC";
	KMTC.associatedCity = @"MOUNT CLEMENS";
	KMTC.associatedState = @"MI";
	KMTC.latitude = 42.6128;
	KMTC.longitude = 82.8317;
	[stationList addObject:KMTC];

	VXReportingStation *KMTH = [VXReportingStation new];
	KMTH.stationIdentifier = @"KMTH";
	KMTH.associatedCity = @"MARATHON";
	KMTH.associatedState = @"FL";
	KMTH.latitude = 24.7261;
	KMTH.longitude = 81.0511;
	[stationList addObject:KMTH];

	VXReportingStation *KMTJ = [VXReportingStation new];
	KMTJ.stationIdentifier = @"KMTJ";
	KMTJ.associatedCity = @"MONTROSE";
	KMTJ.associatedState = @"CO";
	KMTJ.latitude = 38.5097;
	KMTJ.longitude = 107.894;
	[stationList addObject:KMTJ];

	VXReportingStation *KMTN = [VXReportingStation new];
	KMTN.stationIdentifier = @"KMTN";
	KMTN.associatedCity = @"BALTIMORE";
	KMTN.associatedState = @"MD";
	KMTN.latitude = 39.3256;
	KMTN.longitude = 76.4136;
	[stationList addObject:KMTN];

	VXReportingStation *KMTO = [VXReportingStation new];
	KMTO.stationIdentifier = @"KMTO";
	KMTO.associatedCity = @"MATTOON/CHARLESTON";
	KMTO.associatedState = @"IL";
	KMTO.latitude = 39.4781;
	KMTO.longitude = 88.2803;
	[stationList addObject:KMTO];

	VXReportingStation *KMTV = [VXReportingStation new];
	KMTV.stationIdentifier = @"KMTV";
	KMTV.associatedCity = @"MARTINSVILLE";
	KMTV.associatedState = @"VA";
	KMTV.latitude = 36.6306;
	KMTV.longitude = 80.0183;
	[stationList addObject:KMTV];

	VXReportingStation *KMTW = [VXReportingStation new];
	KMTW.stationIdentifier = @"KMTW";
	KMTW.associatedCity = @"MANITOWOC";
	KMTW.associatedState = @"WI";
	KMTW.latitude = 44.1286;
	KMTW.longitude = 87.6806;
	[stationList addObject:KMTW];

	VXReportingStation *KMUI = [VXReportingStation new];
	KMUI.stationIdentifier = @"KMUI";
	KMUI.associatedCity = @"FORT INDIANTOWN GAP(ANNVIL";
	KMUI.associatedState = @"PA";
	KMUI.latitude = 40.4347;
	KMUI.longitude = 76.5692;
	[stationList addObject:KMUI];

	VXReportingStation *KMUO = [VXReportingStation new];
	KMUO.stationIdentifier = @"KMUO";
	KMUO.associatedCity = @"MOUNTAIN HOME";
	KMUO.associatedState = @"ID";
	KMUO.latitude = 43.0436;
	KMUO.longitude = 115.872;
	[stationList addObject:KMUO];

	VXReportingStation *KMUT = [VXReportingStation new];
	KMUT.stationIdentifier = @"KMUT";
	KMUT.associatedCity = @"MUSCATINE";
	KMUT.associatedState = @"IA";
	KMUT.latitude = 41.3678;
	KMUT.longitude = 91.1481;
	[stationList addObject:KMUT];

	VXReportingStation *KMVE = [VXReportingStation new];
	KMVE.stationIdentifier = @"KMVE";
	KMVE.associatedCity = @"MONTEVIDEO";
	KMVE.associatedState = @"MN";
	KMVE.latitude = 44.9689;
	KMVE.longitude = 95.71;
	[stationList addObject:KMVE];

	VXReportingStation *KMVH = [VXReportingStation new];
	KMVH.stationIdentifier = @"KMVH";
	KMVH.associatedCity = @"GRASS RANGE";
	KMVH.associatedState = @"MT";
	KMVH.latitude = 46.8372;
	KMVH.longitude = 108.948;
	[stationList addObject:KMVH];

	VXReportingStation *KMVL = [VXReportingStation new];
	KMVL.stationIdentifier = @"KMVL";
	KMVL.associatedCity = @"MORRISVILLE";
	KMVL.associatedState = @"VT";
	KMVL.latitude = 44.5344;
	KMVL.longitude = 72.6139;
	[stationList addObject:KMVL];

	VXReportingStation *KMVN = [VXReportingStation new];
	KMVN.stationIdentifier = @"KMVN";
	KMVN.associatedCity = @"MOUNT VERNON";
	KMVN.associatedState = @"IL";
	KMVN.latitude = 38.3233;
	KMVN.longitude = 88.8583;
	[stationList addObject:KMVN];

	VXReportingStation *KMVY = [VXReportingStation new];
	KMVY.stationIdentifier = @"KMVY";
	KMVY.associatedCity = @"VINEYARD HAVEN";
	KMVY.associatedState = @"MA";
	KMVY.latitude = 41.3928;
	KMVY.longitude = 70.6142;
	[stationList addObject:KMVY];

	VXReportingStation *KMWA = [VXReportingStation new];
	KMWA.stationIdentifier = @"KMWA";
	KMWA.associatedCity = @"MARION";
	KMWA.associatedState = @"IL";
	KMWA.latitude = 37.7531;
	KMWA.longitude = 89.0114;
	[stationList addObject:KMWA];

	VXReportingStation *KMWC = [VXReportingStation new];
	KMWC.stationIdentifier = @"KMWC";
	KMWC.associatedCity = @"MILWAUKEE";
	KMWC.associatedState = @"WI";
	KMWC.latitude = 43.1103;
	KMWC.longitude = 88.0342;
	[stationList addObject:KMWC];

	VXReportingStation *KMWH = [VXReportingStation new];
	KMWH.stationIdentifier = @"KMWH";
	KMWH.associatedCity = @"MOSES LAKE";
	KMWH.associatedState = @"WA";
	KMWH.latitude = 47.2075;
	KMWH.longitude = 119.32;
	[stationList addObject:KMWH];

	VXReportingStation *KMWK = [VXReportingStation new];
	KMWK.stationIdentifier = @"KMWK";
	KMWK.associatedCity = @"MOUNT AIRY";
	KMWK.associatedState = @"NC";
	KMWK.latitude = 36.4597;
	KMWK.longitude = 80.5528;
	[stationList addObject:KMWK];

	VXReportingStation *KMWL = [VXReportingStation new];
	KMWL.stationIdentifier = @"KMWL";
	KMWL.associatedCity = @"MINERAL WELLS";
	KMWL.associatedState = @"TX";
	KMWL.latitude = 32.7814;
	KMWL.longitude = 98.06;
	[stationList addObject:KMWL];

	VXReportingStation *KMWM = [VXReportingStation new];
	KMWM.stationIdentifier = @"KMWM";
	KMWM.associatedCity = @"WINDOM";
	KMWM.associatedState = @"MN";
	KMWM.latitude = 43.9133;
	KMWM.longitude = 95.1092;
	[stationList addObject:KMWM];

	VXReportingStation *KMWN = [VXReportingStation new];
	KMWN.stationIdentifier = @"KMWN";
	KMWN.associatedCity = @"MOUNT WASHINGTON";
	KMWN.associatedState = @"NH";
	KMWN.latitude = 44.2667;
	KMWN.longitude = 71.2994;
	[stationList addObject:KMWN];

	VXReportingStation *KMWO = [VXReportingStation new];
	KMWO.stationIdentifier = @"KMWO";
	KMWO.associatedCity = @"MIDDLETOWN";
	KMWO.associatedState = @"OH";
	KMWO.latitude = 39.5308;
	KMWO.longitude = 84.3953;
	[stationList addObject:KMWO];

	VXReportingStation *KMWS = [VXReportingStation new];
	KMWS.stationIdentifier = @"KMWS";
	KMWS.associatedCity = @"MOUNT WILSON";
	KMWS.associatedState = @"CA";
	KMWS.latitude = 34.2333;
	KMWS.longitude = 118.067;
	[stationList addObject:KMWS];

	VXReportingStation *KMXF = [VXReportingStation new];
	KMXF.stationIdentifier = @"KMXF";
	KMXF.associatedCity = @"MONTGOMERY";
	KMXF.associatedState = @"AL";
	KMXF.latitude = 32.3792;
	KMXF.longitude = 86.3625;
	[stationList addObject:KMXF];

	VXReportingStation *KMXO = [VXReportingStation new];
	KMXO.stationIdentifier = @"KMXO";
	KMXO.associatedCity = @"MONTICELLO";
	KMXO.associatedState = @"IA";
	KMXO.latitude = 42.2203;
	KMXO.longitude = 91.1631;
	[stationList addObject:KMXO];

	VXReportingStation *KMYF = [VXReportingStation new];
	KMYF.stationIdentifier = @"KMYF";
	KMYF.associatedCity = @"SAN DIEGO";
	KMYF.associatedState = @"CA";
	KMYF.latitude = 32.8156;
	KMYF.longitude = 117.139;
	[stationList addObject:KMYF];

	VXReportingStation *KMYL = [VXReportingStation new];
	KMYL.stationIdentifier = @"KMYL";
	KMYL.associatedCity = @"MC CALL";
	KMYL.associatedState = @"ID";
	KMYL.latitude = 44.8894;
	KMYL.longitude = 116.101;
	[stationList addObject:KMYL];

	VXReportingStation *KMYP = [VXReportingStation new];
	KMYP.stationIdentifier = @"KMYP";
	KMYP.associatedCity = @"MONARCH PASS";
	KMYP.associatedState = @"CO";
	KMYP.latitude = 38.4972;
	KMYP.longitude = 106.32;
	[stationList addObject:KMYP];

	VXReportingStation *KMYR = [VXReportingStation new];
	KMYR.stationIdentifier = @"KMYR";
	KMYR.associatedCity = @"MYRTLE BEACH";
	KMYR.associatedState = @"SC";
	KMYR.latitude = 33.6797;
	KMYR.longitude = 78.9283;
	[stationList addObject:KMYR];

	VXReportingStation *KMYT = [VXReportingStation new];
	KMYT.stationIdentifier = @"KMYT";
	KMYT.associatedCity = @"INNOVATOR";
	KMYT.associatedState = @"MS";
	KMYT.latitude = 28.2206;
	KMYT.longitude = 89.615;
	[stationList addObject:KMYT];

	VXReportingStation *KMYV = [VXReportingStation new];
	KMYV.stationIdentifier = @"KMYV";
	KMYV.associatedCity = @"MARYSVILLE";
	KMYV.associatedState = @"CA";
	KMYV.latitude = 39.0975;
	KMYV.longitude = 121.57;
	[stationList addObject:KMYV];

	VXReportingStation *KMYZ = [VXReportingStation new];
	KMYZ.stationIdentifier = @"KMYZ";
	KMYZ.associatedCity = @"MARYSVILLE";
	KMYZ.associatedState = @"KS";
	KMYZ.latitude = 39.8542;
	KMYZ.longitude = 96.6278;
	[stationList addObject:KMYZ];

	VXReportingStation *KMZG = [VXReportingStation new];
	KMZG.stationIdentifier = @"KMZG";
	KMZG.associatedCity = @"MUSTANG ISLAND A85A";
	KMZG.associatedState = @"TX";
	KMZG.latitude = 27.7269;
	KMZG.longitude = 86.1911;
	[stationList addObject:KMZG];

	VXReportingStation *KMZZ = [VXReportingStation new];
	KMZZ.stationIdentifier = @"KMZZ";
	KMZZ.associatedCity = @"MARION";
	KMZZ.associatedState = @"IN";
	KMZZ.latitude = 40.4897;
	KMZZ.longitude = 85.6797;
	[stationList addObject:KMZZ];

	VXReportingStation *KN03 = [VXReportingStation new];
	KN03.stationIdentifier = @"KN03";
	KN03.associatedCity = @"CORTLAND";
	KN03.associatedState = @"NY";
	KN03.latitude = 42.5925;
	KN03.longitude = 76.2147;
	[stationList addObject:KN03];

	VXReportingStation *KN38 = [VXReportingStation new];
	KN38.stationIdentifier = @"KN38";
	KN38.associatedCity = @"WELLSBORO";
	KN38.associatedState = @"PA";
	KN38.latitude = 41.7278;
	KN38.longitude = 77.3964;
	[stationList addObject:KN38];

	VXReportingStation *KN60 = [VXReportingStation new];
	KN60.stationIdentifier = @"KN60";
	KN60.associatedCity = @"GARRISON";
	KN60.associatedState = @"ND";
	KN60.latitude = 47.6592;
	KN60.longitude = 101.434;
	[stationList addObject:KN60];

	VXReportingStation *KNBC = [VXReportingStation new];
	KNBC.stationIdentifier = @"KNBC";
	KNBC.associatedCity = @"BEAUFORT";
	KNBC.associatedState = @"SC";
	KNBC.latitude = 32.4772;
	KNBC.longitude = 80.7231;
	[stationList addObject:KNBC];

	VXReportingStation *KNBG = [VXReportingStation new];
	KNBG.stationIdentifier = @"KNBG";
	KNBG.associatedCity = @"NEW ORLEANS";
	KNBG.associatedState = @"LA";
	KNBG.latitude = 29.8253;
	KNBG.longitude = 90.035;
	[stationList addObject:KNBG];

	VXReportingStation *KNCA = [VXReportingStation new];
	KNCA.stationIdentifier = @"KNCA";
	KNCA.associatedCity = @"JACKSONVILLE";
	KNCA.associatedState = @"NC";
	KNCA.latitude = 34.7083;
	KNCA.longitude = 77.4394;
	[stationList addObject:KNCA];

	VXReportingStation *KNEL = [VXReportingStation new];
	KNEL.stationIdentifier = @"KNEL";
	KNEL.associatedCity = @"LAKEHURST";
	KNEL.associatedState = @"NJ";
	KNEL.latitude = 40.0333;
	KNEL.longitude = 74.3533;
	[stationList addObject:KNEL];

	VXReportingStation *KNEW = [VXReportingStation new];
	KNEW.stationIdentifier = @"KNEW";
	KNEW.associatedCity = @"NEW ORLEANS";
	KNEW.associatedState = @"LA";
	KNEW.latitude = 30.0422;
	KNEW.longitude = 90.0281;
	[stationList addObject:KNEW];

	VXReportingStation *KNFG = [VXReportingStation new];
	KNFG.stationIdentifier = @"KNFG";
	KNFG.associatedCity = @"OCEANSIDE";
	KNFG.associatedState = @"CA";
	KNFG.latitude = 33.3011;
	KNFG.longitude = 117.355;
	[stationList addObject:KNFG];

	VXReportingStation *KNFL = [VXReportingStation new];
	KNFL.stationIdentifier = @"KNFL";
	KNFL.associatedCity = @"FALLON";
	KNFL.associatedState = @"NV";
	KNFL.latitude = 39.4164;
	KNFL.longitude = 118.701;
	[stationList addObject:KNFL];

	VXReportingStation *KNFW = [VXReportingStation new];
	KNFW.stationIdentifier = @"KNFW";
	KNFW.associatedCity = @"FORT WORTH";
	KNFW.associatedState = @"TX";
	KNFW.latitude = 32.7692;
	KNFW.longitude = 97.4414;
	[stationList addObject:KNFW];

	VXReportingStation *KNGP = [VXReportingStation new];
	KNGP.stationIdentifier = @"KNGP";
	KNGP.associatedCity = @"CORPUS CHRISTI";
	KNGP.associatedState = @"TX";
	KNGP.latitude = 27.6925;
	KNGP.longitude = 97.2911;
	[stationList addObject:KNGP];

	VXReportingStation *KNGU = [VXReportingStation new];
	KNGU.stationIdentifier = @"KNGU";
	KNGU.associatedCity = @"NORFOLK";
	KNGU.associatedState = @"VA";
	KNGU.latitude = 36.9375;
	KNGU.longitude = 76.2892;
	[stationList addObject:KNGU];

	VXReportingStation *KNHK = [VXReportingStation new];
	KNHK.stationIdentifier = @"KNHK";
	KNHK.associatedCity = @"PATUXENT RIVER";
	KNHK.associatedState = @"MD";
	KNHK.latitude = 38.2858;
	KNHK.longitude = 76.4117;
	[stationList addObject:KNHK];

	VXReportingStation *KNHZ = [VXReportingStation new];
	KNHZ.stationIdentifier = @"KNHZ";
	KNHZ.associatedCity = @"BRUNSWICK";
	KNHZ.associatedState = @"ME";
	KNHZ.latitude = 43.8919;
	KNHZ.longitude = 69.9386;
	[stationList addObject:KNHZ];

	VXReportingStation *KNID = [VXReportingStation new];
	KNID.stationIdentifier = @"KNID";
	KNID.associatedCity = @"CHINA LAKE";
	KNID.associatedState = @"CA";
	KNID.latitude = 35.6853;
	KNID.longitude = 117.692;
	[stationList addObject:KNID];

	VXReportingStation *KNIP = [VXReportingStation new];
	KNIP.stationIdentifier = @"KNIP";
	KNIP.associatedCity = @"JACKSONVILLE";
	KNIP.associatedState = @"FL";
	KNIP.latitude = 30.2358;
	KNIP.longitude = 81.6803;
	[stationList addObject:KNIP];

	VXReportingStation *KNJK = [VXReportingStation new];
	KNJK.stationIdentifier = @"KNJK";
	KNJK.associatedCity = @"EL CENTRO";
	KNJK.associatedState = @"CA";
	KNJK.latitude = 32.8292;
	KNJK.longitude = 115.672;
	[stationList addObject:KNJK];

	VXReportingStation *KNKT = [VXReportingStation new];
	KNKT.stationIdentifier = @"KNKT";
	KNKT.associatedCity = @"CHERRY POINT";
	KNKT.associatedState = @"NC";
	KNKT.latitude = 34.9025;
	KNKT.longitude = 76.8808;
	[stationList addObject:KNKT];

	VXReportingStation *KNKX = [VXReportingStation new];
	KNKX.stationIdentifier = @"KNKX";
	KNKX.associatedCity = @"SAN DIEGO";
	KNKX.associatedState = @"CA";
	KNKX.latitude = 32.8683;
	KNKX.longitude = 117.143;
	[stationList addObject:KNKX];

	VXReportingStation *KNLC = [VXReportingStation new];
	KNLC.stationIdentifier = @"KNLC";
	KNLC.associatedCity = @"LEMOORE";
	KNLC.associatedState = @"CA";
	KNLC.latitude = 36.3328;
	KNLC.longitude = 119.952;
	[stationList addObject:KNLC];

	VXReportingStation *KNMM = [VXReportingStation new];
	KNMM.stationIdentifier = @"KNMM";
	KNMM.associatedCity = @"MERIDIAN";
	KNMM.associatedState = @"MS";
	KNMM.latitude = 32.5519;
	KNMM.longitude = 88.5553;
	[stationList addObject:KNMM];

	VXReportingStation *KNPA = [VXReportingStation new];
	KNPA.stationIdentifier = @"KNPA";
	KNPA.associatedCity = @"PENSACOLA";
	KNPA.associatedState = @"FL";
	KNPA.latitude = 30.3525;
	KNPA.longitude = 87.3167;
	[stationList addObject:KNPA];

	VXReportingStation *KNQA = [VXReportingStation new];
	KNQA.stationIdentifier = @"KNQA";
	KNQA.associatedCity = @"MILLINGTON";
	KNQA.associatedState = @"TN";
	KNQA.latitude = 35.3567;
	KNQA.longitude = 89.8703;
	[stationList addObject:KNQA];

	VXReportingStation *KNQI = [VXReportingStation new];
	KNQI.stationIdentifier = @"KNQI";
	KNQI.associatedCity = @"KINGSVILLE";
	KNQI.associatedState = @"TX";
	KNQI.latitude = 27.5069;
	KNQI.longitude = 97.8094;
	[stationList addObject:KNQI];

	VXReportingStation *KNQX = [VXReportingStation new];
	KNQX.stationIdentifier = @"KNQX";
	KNQX.associatedCity = @"KEY WEST";
	KNQX.associatedState = @"FL";
	KNQX.latitude = 24.5756;
	KNQX.longitude = 81.6886;
	[stationList addObject:KNQX];

	VXReportingStation *KNRB = [VXReportingStation new];
	KNRB.stationIdentifier = @"KNRB";
	KNRB.associatedCity = @"MAYPORT";
	KNRB.associatedState = @"FL";
	KNRB.latitude = 30.3917;
	KNRB.longitude = 81.4236;
	[stationList addObject:KNRB];

	VXReportingStation *KNRS = [VXReportingStation new];
	KNRS.stationIdentifier = @"KNRS";
	KNRS.associatedCity = @"IMPERIAL BEACH";
	KNRS.associatedState = @"CA";
	KNRS.latitude = 32.5628;
	KNRS.longitude = 117.111;
	[stationList addObject:KNRS];

	VXReportingStation *KNSE = [VXReportingStation new];
	KNSE.stationIdentifier = @"KNSE";
	KNSE.associatedCity = @"MILTON";
	KNSE.associatedState = @"FL";
	KNSE.latitude = 30.7242;
	KNSE.longitude = 87.0219;
	[stationList addObject:KNSE];

	VXReportingStation *KNSI = [VXReportingStation new];
	KNSI.stationIdentifier = @"KNSI";
	KNSI.associatedCity = @"SAN NICOLAS ISLAND";
	KNSI.associatedState = @"CA";
	KNSI.latitude = 33.2397;
	KNSI.longitude = 119.458;
	[stationList addObject:KNSI];

	VXReportingStation *KNTD = [VXReportingStation new];
	KNTD.stationIdentifier = @"KNTD";
	KNTD.associatedCity = @"OXNARD";
	KNTD.associatedState = @"CA";
	KNTD.latitude = 34.1203;
	KNTD.longitude = 119.121;
	[stationList addObject:KNTD];

	VXReportingStation *KNTU = [VXReportingStation new];
	KNTU.stationIdentifier = @"KNTU";
	KNTU.associatedCity = @"VIRGINIA BEACH";
	KNTU.associatedState = @"VA";
	KNTU.latitude = 36.8206;
	KNTU.longitude = 76.0333;
	[stationList addObject:KNTU];

	VXReportingStation *KNUC = [VXReportingStation new];
	KNUC.stationIdentifier = @"KNUC";
	KNUC.associatedCity = @"SAN CLEMENTE ISLAND";
	KNUC.associatedState = @"CA";
	KNUC.latitude = 33.0233;
	KNUC.longitude = 118.587;
	[stationList addObject:KNUC];

	VXReportingStation *KNUQ = [VXReportingStation new];
	KNUQ.stationIdentifier = @"KNUQ";
	KNUQ.associatedCity = @"MOUNTAIN VIEW";
	KNUQ.associatedState = @"CA";
	KNUQ.latitude = 37.415;
	KNUQ.longitude = 122.048;
	[stationList addObject:KNUQ];

	VXReportingStation *KNUW = [VXReportingStation new];
	KNUW.stationIdentifier = @"KNUW";
	KNUW.associatedCity = @"OAK HARBOR";
	KNUW.associatedState = @"WA";
	KNUW.latitude = 48.3517;
	KNUW.longitude = 122.656;
	[stationList addObject:KNUW];

	VXReportingStation *KNYC = [VXReportingStation new];
	KNYC.stationIdentifier = @"KNYC";
	KNYC.associatedCity = @"NEW YORK";
	KNYC.associatedState = @"NY";
	KNYC.latitude = 40.7667;
	KNYC.longitude = 73.9828;
	[stationList addObject:KNYC];

	VXReportingStation *KNYG = [VXReportingStation new];
	KNYG.stationIdentifier = @"KNYG";
	KNYG.associatedCity = @"QUANTICO";
	KNYG.associatedState = @"VA";
	KNYG.latitude = 38.5017;
	KNYG.longitude = 77.3053;
	[stationList addObject:KNYG];

	VXReportingStation *KNYL = [VXReportingStation new];
	KNYL.stationIdentifier = @"KNYL";
	KNYL.associatedCity = @"YUMA";
	KNYL.associatedState = @"AZ";
	KNYL.latitude = 32.5094;
	KNYL.longitude = 114.467;
	[stationList addObject:KNYL];

	VXReportingStation *KNZW = [VXReportingStation new];
	KNZW.stationIdentifier = @"KNZW";
	KNZW.associatedCity = @"SOUTH WEYMOUTH";
	KNZW.associatedState = @"MA";
	KNZW.latitude = 42.1533;
	KNZW.longitude = 70.9511;
	[stationList addObject:KNZW];

	VXReportingStation *KNZY = [VXReportingStation new];
	KNZY.stationIdentifier = @"KNZY";
	KNZY.associatedCity = @"SAN DIEGO";
	KNZY.associatedState = @"CA";
	KNZY.latitude = 32.6992;
	KNZY.longitude = 117.215;
	[stationList addObject:KNZY];

	VXReportingStation *KO22 = [VXReportingStation new];
	KO22.stationIdentifier = @"KO22";
	KO22.associatedCity = @"COLUMBIA";
	KO22.associatedState = @"CA";
	KO22.latitude = 38.0303;
	KO22.longitude = 120.414;
	[stationList addObject:KO22];

	VXReportingStation *KO54 = [VXReportingStation new];
	KO54.stationIdentifier = @"KO54";
	KO54.associatedCity = @"WEAVERVILLE";
	KO54.associatedState = @"CA";
	KO54.latitude = 40.7458;
	KO54.longitude = 122.922;
	[stationList addObject:KO54];

	VXReportingStation *KO69 = [VXReportingStation new];
	KO69.stationIdentifier = @"KO69";
	KO69.associatedCity = @"PETALUMA";
	KO69.associatedState = @"CA";
	KO69.latitude = 38.2578;
	KO69.longitude = 122.605;
	[stationList addObject:KO69];

	VXReportingStation *KO86 = [VXReportingStation new];
	KO86.stationIdentifier = @"KO86";
	KO86.associatedCity = @"TRINITY CENTER";
	KO86.associatedState = @"CA";
	KO86.latitude = 40.8178;
	KO86.longitude = 122.693;
	[stationList addObject:KO86];

	VXReportingStation *KO87 = [VXReportingStation new];
	KO87.stationIdentifier = @"KO87";
	KO87.associatedCity = @"SHELTER COVE";
	KO87.associatedState = @"CA";
	KO87.latitude = 40.0331;
	KO87.longitude = 124.068;
	[stationList addObject:KO87];

	VXReportingStation *KOAJ = [VXReportingStation new];
	KOAJ.stationIdentifier = @"KOAJ";
	KOAJ.associatedCity = @"JACKSONVILLE";
	KOAJ.associatedState = @"NC";
	KOAJ.latitude = 34.8289;
	KOAJ.longitude = 77.6119;
	[stationList addObject:KOAJ];

	VXReportingStation *KOAK = [VXReportingStation new];
	KOAK.stationIdentifier = @"KOAK";
	KOAK.associatedCity = @"OAKLAND";
	KOAK.associatedState = @"CA";
	KOAK.latitude = 37.7211;
	KOAK.longitude = 122.221;
	[stationList addObject:KOAK];

	VXReportingStation *KOBE = [VXReportingStation new];
	KOBE.stationIdentifier = @"KOBE";
	KOBE.associatedCity = @"OKEECHOBEE";
	KOBE.associatedState = @"FL";
	KOBE.latitude = 27.2658;
	KOBE.longitude = 80.8483;
	[stationList addObject:KOBE];

	VXReportingStation *KOBI = [VXReportingStation new];
	KOBI.stationIdentifier = @"KOBI";
	KOBI.associatedCity = @"WOODBINE";
	KOBI.associatedState = @"NJ";
	KOBI.latitude = 39.2186;
	KOBI.longitude = 74.7939;
	[stationList addObject:KOBI];

	VXReportingStation *KOCF = [VXReportingStation new];
	KOCF.stationIdentifier = @"KOCF";
	KOCF.associatedCity = @"OCALA";
	KOCF.associatedState = @"FL";
	KOCF.latitude = 29.1725;
	KOCF.longitude = 82.2242;
	[stationList addObject:KOCF];

	VXReportingStation *KOCH = [VXReportingStation new];
	KOCH.stationIdentifier = @"KOCH";
	KOCH.associatedCity = @"NACOGDOCHES";
	KOCH.associatedState = @"TX";
	KOCH.latitude = 31.5778;
	KOCH.longitude = 94.7094;
	[stationList addObject:KOCH];

	VXReportingStation *KOCW = [VXReportingStation new];
	KOCW.stationIdentifier = @"KOCW";
	KOCW.associatedCity = @"WASHINGTON";
	KOCW.associatedState = @"NC";
	KOCW.latitude = 35.5703;
	KOCW.longitude = 77.0497;
	[stationList addObject:KOCW];

	VXReportingStation *KODO = [VXReportingStation new];
	KODO.stationIdentifier = @"KODO";
	KODO.associatedCity = @"ODESSA";
	KODO.associatedState = @"TX";
	KODO.latitude = 31.9206;
	KODO.longitude = 102.387;
	[stationList addObject:KODO];

	VXReportingStation *KODX = [VXReportingStation new];
	KODX.stationIdentifier = @"KODX";
	KODX.associatedCity = @"ORD";
	KODX.associatedState = @"NE";
	KODX.latitude = 41.6242;
	KODX.longitude = 98.9522;
	[stationList addObject:KODX];

	VXReportingStation *KOEB = [VXReportingStation new];
	KOEB.stationIdentifier = @"KOEB";
	KOEB.associatedCity = @"COLDWATER";
	KOEB.associatedState = @"MI";
	KOEB.latitude = 41.9333;
	KOEB.longitude = 85.0525;
	[stationList addObject:KOEB];

	VXReportingStation *KOFF = [VXReportingStation new];
	KOFF.stationIdentifier = @"KOFF";
	KOFF.associatedCity = @"OMAHA";
	KOFF.associatedState = @"NE";
	KOFF.latitude = 41.1183;
	KOFF.longitude = 95.9125;
	[stationList addObject:KOFF];

	VXReportingStation *KOFK = [VXReportingStation new];
	KOFK.stationIdentifier = @"KOFK";
	KOFK.associatedCity = @"NORFOLK";
	KOFK.associatedState = @"NE";
	KOFK.latitude = 41.9853;
	KOFK.longitude = 97.435;
	[stationList addObject:KOFK];

	VXReportingStation *KOFP = [VXReportingStation new];
	KOFP.stationIdentifier = @"KOFP";
	KOFP.associatedCity = @"RICHMOND/ASHLAND";
	KOFP.associatedState = @"VA";
	KOFP.latitude = 37.7089;
	KOFP.longitude = 77.4364;
	[stationList addObject:KOFP];

	VXReportingStation *KOGA = [VXReportingStation new];
	KOGA.stationIdentifier = @"KOGA";
	KOGA.associatedCity = @"OGALLALA";
	KOGA.associatedState = @"NE";
	KOGA.latitude = 41.1194;
	KOGA.longitude = 101.769;
	[stationList addObject:KOGA];

	VXReportingStation *KOGB = [VXReportingStation new];
	KOGB.stationIdentifier = @"KOGB";
	KOGB.associatedCity = @"ORANGEBURG";
	KOGB.associatedState = @"SC";
	KOGB.latitude = 33.4581;
	KOGB.longitude = 80.8586;
	[stationList addObject:KOGB];

	VXReportingStation *KOGD = [VXReportingStation new];
	KOGD.stationIdentifier = @"KOGD";
	KOGD.associatedCity = @"OGDEN";
	KOGD.associatedState = @"UT";
	KOGD.latitude = 41.1958;
	KOGD.longitude = 112.012;
	[stationList addObject:KOGD];

	VXReportingStation *KOGS = [VXReportingStation new];
	KOGS.stationIdentifier = @"KOGS";
	KOGS.associatedCity = @"OGDENSBURG";
	KOGS.associatedState = @"NY";
	KOGS.latitude = 44.6817;
	KOGS.longitude = 75.4653;
	[stationList addObject:KOGS];

	VXReportingStation *KOIC = [VXReportingStation new];
	KOIC.stationIdentifier = @"KOIC";
	KOIC.associatedCity = @"NORWICH";
	KOIC.associatedState = @"NY";
	KOIC.latitude = 42.5664;
	KOIC.longitude = 75.5239;
	[stationList addObject:KOIC];

	VXReportingStation *KOIN = [VXReportingStation new];
	KOIN.stationIdentifier = @"KOIN";
	KOIN.associatedCity = @"OBERLIN";
	KOIN.associatedState = @"KS";
	KOIN.latitude = 39.8339;
	KOIN.longitude = 100.539;
	[stationList addObject:KOIN];

	VXReportingStation *KOJA = [VXReportingStation new];
	KOJA.stationIdentifier = @"KOJA";
	KOJA.associatedCity = @"WEATHERFORD";
	KOJA.associatedState = @"OK";
	KOJA.latitude = 35.5447;
	KOJA.longitude = 98.6683;
	[stationList addObject:KOJA];

	VXReportingStation *KOJC = [VXReportingStation new];
	KOJC.stationIdentifier = @"KOJC";
	KOJC.associatedCity = @"OLATHE";
	KOJC.associatedState = @"KS";
	KOJC.latitude = 38.8475;
	KOJC.longitude = 94.7375;
	[stationList addObject:KOJC];

	VXReportingStation *KOKB = [VXReportingStation new];
	KOKB.stationIdentifier = @"KOKB";
	KOKB.associatedCity = @"OCEANSIDE";
	KOKB.associatedState = @"CA";
	KOKB.latitude = 33.2194;
	KOKB.longitude = 117.349;
	[stationList addObject:KOKB];

	VXReportingStation *KOKC = [VXReportingStation new];
	KOKC.stationIdentifier = @"KOKC";
	KOKC.associatedCity = @"OKLAHOMA CITY";
	KOKC.associatedState = @"OK";
	KOKC.latitude = 35.3931;
	KOKC.longitude = 97.6006;
	[stationList addObject:KOKC];

	VXReportingStation *KOKH = [VXReportingStation new];
	KOKH.stationIdentifier = @"KOKH";
	KOKH.associatedCity = @"OAK HARBOR";
	KOKH.associatedState = @"WA";
	KOKH.latitude = 48.2531;
	KOKH.longitude = 122.679;
	[stationList addObject:KOKH];

	VXReportingStation *KOKK = [VXReportingStation new];
	KOKK.stationIdentifier = @"KOKK";
	KOKK.associatedCity = @"KOKOMO";
	KOKK.associatedState = @"IN";
	KOKK.latitude = 40.5281;
	KOKK.longitude = 86.0589;
	[stationList addObject:KOKK];

	VXReportingStation *KOKM = [VXReportingStation new];
	KOKM.stationIdentifier = @"KOKM";
	KOKM.associatedCity = @"OKMULGEE";
	KOKM.associatedState = @"OK";
	KOKM.latitude = 35.6681;
	KOKM.longitude = 95.9486;
	[stationList addObject:KOKM];

	VXReportingStation *KOKV = [VXReportingStation new];
	KOKV.stationIdentifier = @"KOKV";
	KOKV.associatedCity = @"WINCHESTER";
	KOKV.associatedState = @"VA";
	KOKV.latitude = 39.1433;
	KOKV.longitude = 78.1444;
	[stationList addObject:KOKV];

	VXReportingStation *KOKZ = [VXReportingStation new];
	KOKZ.stationIdentifier = @"KOKZ";
	KOKZ.associatedCity = @"SANDERSVILLE";
	KOKZ.associatedState = @"GA";
	KOKZ.latitude = 32.965;
	KOKZ.longitude = 82.8383;
	[stationList addObject:KOKZ];

	VXReportingStation *KOLE = [VXReportingStation new];
	KOLE.stationIdentifier = @"KOLE";
	KOLE.associatedCity = @"OLEAN";
	KOLE.associatedState = @"NY";
	KOLE.latitude = 42.2411;
	KOLE.longitude = 78.3714;
	[stationList addObject:KOLE];

	VXReportingStation *KOLF = [VXReportingStation new];
	KOLF.stationIdentifier = @"KOLF";
	KOLF.associatedCity = @"WOLF POINT";
	KOLF.associatedState = @"MT";
	KOLF.latitude = 48.0944;
	KOLF.longitude = 105.575;
	[stationList addObject:KOLF];

	VXReportingStation *KOLG = [VXReportingStation new];
	KOLG.stationIdentifier = @"KOLG";
	KOLG.associatedCity = @"SOLON SPRINGS";
	KOLG.associatedState = @"WI";
	KOLG.latitude = 46.3153;
	KOLG.longitude = 91.8181;
	[stationList addObject:KOLG];

	VXReportingStation *KOLM = [VXReportingStation new];
	KOLM.stationIdentifier = @"KOLM";
	KOLM.associatedCity = @"OLYMPIA";
	KOLM.associatedState = @"WA";
	KOLM.latitude = 46.9703;
	KOLM.longitude = 122.902;
	[stationList addObject:KOLM];

	VXReportingStation *KOLS = [VXReportingStation new];
	KOLS.stationIdentifier = @"KOLS";
	KOLS.associatedCity = @"NOGALES";
	KOLS.associatedState = @"AZ";
	KOLS.latitude = 31.4175;
	KOLS.longitude = 110.848;
	[stationList addObject:KOLS];

	VXReportingStation *KOLU = [VXReportingStation new];
	KOLU.stationIdentifier = @"KOLU";
	KOLU.associatedCity = @"COLUMBUS";
	KOLU.associatedState = @"NE";
	KOLU.latitude = 41.4478;
	KOLU.longitude = 97.3425;
	[stationList addObject:KOLU];

	VXReportingStation *KOLV = [VXReportingStation new];
	KOLV.stationIdentifier = @"KOLV";
	KOLV.associatedCity = @"OLIVE BRANCH";
	KOLV.associatedState = @"MS";
	KOLV.latitude = 34.9786;
	KOLV.longitude = 89.7867;
	[stationList addObject:KOLV];

	VXReportingStation *KOLY = [VXReportingStation new];
	KOLY.stationIdentifier = @"KOLY";
	KOLY.associatedCity = @"OLNEY-NOBLE";
	KOLY.associatedState = @"IL";
	KOLY.latitude = 38.7217;
	KOLY.longitude = 88.1764;
	[stationList addObject:KOLY];

	VXReportingStation *KOLZ = [VXReportingStation new];
	KOLZ.stationIdentifier = @"KOLZ";
	KOLZ.associatedCity = @"OELWEIN";
	KOLZ.associatedState = @"IA";
	KOLZ.latitude = 42.6808;
	KOLZ.longitude = 91.9744;
	[stationList addObject:KOLZ];

	VXReportingStation *KOMA = [VXReportingStation new];
	KOMA.stationIdentifier = @"KOMA";
	KOMA.associatedCity = @"OMAHA";
	KOMA.associatedState = @"NE";
	KOMA.latitude = 41.3025;
	KOMA.longitude = 95.8936;
	[stationList addObject:KOMA];

	VXReportingStation *KOMH = [VXReportingStation new];
	KOMH.stationIdentifier = @"KOMH";
	KOMH.associatedCity = @"ORANGE";
	KOMH.associatedState = @"VA";
	KOMH.latitude = 38.2469;
	KOMH.longitude = 78.0456;
	[stationList addObject:KOMH];

	VXReportingStation *KOMK = [VXReportingStation new];
	KOMK.stationIdentifier = @"KOMK";
	KOMK.associatedCity = @"OMAK";
	KOMK.associatedState = @"WA";
	KOMK.latitude = 48.4642;
	KOMK.longitude = 119.518;
	[stationList addObject:KOMK];

	VXReportingStation *KOMN = [VXReportingStation new];
	KOMN.stationIdentifier = @"KOMN";
	KOMN.associatedCity = @"ORMOND BEACH";
	KOMN.associatedState = @"FL";
	KOMN.latitude = 29.3011;
	KOMN.longitude = 81.1136;
	[stationList addObject:KOMN];

	VXReportingStation *KONA = [VXReportingStation new];
	KONA.stationIdentifier = @"KONA";
	KONA.associatedCity = @"WINONA";
	KONA.associatedState = @"MN";
	KONA.latitude = 44.0769;
	KONA.longitude = 91.7081;
	[stationList addObject:KONA];

	VXReportingStation *KONL = [VXReportingStation new];
	KONL.stationIdentifier = @"KONL";
	KONL.associatedCity = @"O'NEILL";
	KONL.associatedState = @"NE";
	KONL.latitude = 42.4697;
	KONL.longitude = 98.6881;
	[stationList addObject:KONL];

	VXReportingStation *KONM = [VXReportingStation new];
	KONM.stationIdentifier = @"KONM";
	KONM.associatedCity = @"SOCORRO";
	KONM.associatedState = @"NM";
	KONM.latitude = 34.0217;
	KONM.longitude = 106.917;
	[stationList addObject:KONM];

	VXReportingStation *KONO = [VXReportingStation new];
	KONO.stationIdentifier = @"KONO";
	KONO.associatedCity = @"ONTARIO";
	KONO.associatedState = @"OR";
	KONO.latitude = 44.0203;
	KONO.longitude = 117.014;
	[stationList addObject:KONO];

	VXReportingStation *KONP = [VXReportingStation new];
	KONP.stationIdentifier = @"KONP";
	KONP.associatedCity = @"NEWPORT";
	KONP.associatedState = @"OR";
	KONP.latitude = 44.5803;
	KONP.longitude = 124.058;
	[stationList addObject:KONP];

	VXReportingStation *KONT = [VXReportingStation new];
	KONT.stationIdentifier = @"KONT";
	KONT.associatedCity = @"ONTARIO";
	KONT.associatedState = @"CA";
	KONT.latitude = 34.0558;
	KONT.longitude = 117.601;
	[stationList addObject:KONT];

	VXReportingStation *KONX = [VXReportingStation new];
	KONX.stationIdentifier = @"KONX";
	KONX.associatedCity = @"CURRITUCK";
	KONX.associatedState = @"NC";
	KONX.latitude = 36.3983;
	KONX.longitude = 76.0144;
	[stationList addObject:KONX];

	VXReportingStation *KONZ = [VXReportingStation new];
	KONZ.stationIdentifier = @"KONZ";
	KONZ.associatedCity = @"DETROIT/GROSSE ILE";
	KONZ.associatedState = @"MI";
	KONZ.latitude = 42.0983;
	KONZ.longitude = 83.1608;
	[stationList addObject:KONZ];

	VXReportingStation *KOOA = [VXReportingStation new];
	KOOA.stationIdentifier = @"KOOA";
	KOOA.associatedCity = @"OSKALOOSA";
	KOOA.associatedState = @"IA";
	KOOA.latitude = 41.2261;
	KOOA.longitude = 92.4936;
	[stationList addObject:KOOA];

	VXReportingStation *KOPF = [VXReportingStation new];
	KOPF.stationIdentifier = @"KOPF";
	KOPF.associatedCity = @"MIAMI";
	KOPF.associatedState = @"FL";
	KOPF.latitude = 25.9069;
	KOPF.longitude = 80.2783;
	[stationList addObject:KOPF];

	VXReportingStation *KOPL = [VXReportingStation new];
	KOPL.stationIdentifier = @"KOPL";
	KOPL.associatedCity = @"OPELOUSAS";
	KOPL.associatedState = @"LA";
	KOPL.latitude = 30.5642;
	KOPL.longitude = 92.1019;
	[stationList addObject:KOPL];

	VXReportingStation *KOPM = [VXReportingStation new];
	KOPM.stationIdentifier = @"KOPM";
	KOPM.associatedCity = @"N. PADRE ISLAND";
	KOPM.associatedState = @"TX";
	KOPM.latitude = 26.8328;
	KOPM.longitude = 96.94;
	[stationList addObject:KOPM];

	VXReportingStation *KOPN = [VXReportingStation new];
	KOPN.stationIdentifier = @"KOPN";
	KOPN.associatedCity = @"THOMASTON";
	KOPN.associatedState = @"GA";
	KOPN.latitude = 32.9544;
	KOPN.longitude = 84.2631;
	[stationList addObject:KOPN];

	VXReportingStation *KOQN = [VXReportingStation new];
	KOQN.stationIdentifier = @"KOQN";
	KOQN.associatedCity = @"WEST CHESTER";
	KOQN.associatedState = @"PA";
	KOQN.latitude = 39.9889;
	KOQN.longitude = 75.5803;
	[stationList addObject:KOQN];

	VXReportingStation *KOQU = [VXReportingStation new];
	KOQU.stationIdentifier = @"KOQU";
	KOQU.associatedCity = @"NORTH KINGSTOWN";
	KOQU.associatedState = @"RI";
	KOQU.latitude = 41.5969;
	KOQU.longitude = 71.4119;
	[stationList addObject:KOQU];

	VXReportingStation *KORB = [VXReportingStation new];
	KORB.stationIdentifier = @"KORB";
	KORB.associatedCity = @"ORR";
	KORB.associatedState = @"MN";
	KORB.latitude = 48.0158;
	KORB.longitude = 92.8558;
	[stationList addObject:KORB];

	VXReportingStation *KORC = [VXReportingStation new];
	KORC.stationIdentifier = @"KORC";
	KORC.associatedCity = @"ORANGE CITY";
	KORC.associatedState = @"IA";
	KORC.latitude = 42.99;
	KORC.longitude = 96.0628;
	[stationList addObject:KORC];

	VXReportingStation *KORD = [VXReportingStation new];
	KORD.stationIdentifier = @"KORD";
	KORD.associatedCity = @"CHICAGO";
	KORD.associatedState = @"IL";
	KORD.latitude = 41.9783;
	KORD.longitude = 87.9047;
	[stationList addObject:KORD];

	VXReportingStation *KORE = [VXReportingStation new];
	KORE.stationIdentifier = @"KORE";
	KORE.associatedCity = @"ORANGE";
	KORE.associatedState = @"MA";
	KORE.latitude = 42.57;
	KORE.longitude = 72.2883;
	[stationList addObject:KORE];

	VXReportingStation *KORF = [VXReportingStation new];
	KORF.stationIdentifier = @"KORF";
	KORF.associatedCity = @"NORFOLK";
	KORF.associatedState = @"VA";
	KORF.latitude = 36.8944;
	KORF.longitude = 76.2011;
	[stationList addObject:KORF];

	VXReportingStation *KORG = [VXReportingStation new];
	KORG.stationIdentifier = @"KORG";
	KORG.associatedCity = @"ORANGE";
	KORG.associatedState = @"TX";
	KORG.latitude = 30.0692;
	KORG.longitude = 93.8036;
	[stationList addObject:KORG];

	VXReportingStation *KORH = [VXReportingStation new];
	KORH.stationIdentifier = @"KORH";
	KORH.associatedCity = @"WORCESTER";
	KORH.associatedState = @"MA";
	KORH.latitude = 42.2672;
	KORH.longitude = 71.8756;
	[stationList addObject:KORH];

	VXReportingStation *KORL = [VXReportingStation new];
	KORL.stationIdentifier = @"KORL";
	KORL.associatedCity = @"ORLANDO";
	KORL.associatedState = @"FL";
	KORL.latitude = 28.5453;
	KORL.longitude = 81.3328;
	[stationList addObject:KORL];

	VXReportingStation *KORS = [VXReportingStation new];
	KORS.stationIdentifier = @"KORS";
	KORS.associatedCity = @"EASTSOUND";
	KORS.associatedState = @"WA";
	KORS.latitude = 48.7081;
	KORS.longitude = 122.91;
	[stationList addObject:KORS];

	VXReportingStation *KOSA = [VXReportingStation new];
	KOSA.stationIdentifier = @"KOSA";
	KOSA.associatedCity = @"MOUNT PLEASANT";
	KOSA.associatedState = @"TX";
	KOSA.latitude = 33.0953;
	KOSA.longitude = 94.9614;
	[stationList addObject:KOSA];

	VXReportingStation *KOSC = [VXReportingStation new];
	KOSC.stationIdentifier = @"KOSC";
	KOSC.associatedCity = @"OSCODA";
	KOSC.associatedState = @"MI";
	KOSC.latitude = 44.4581;
	KOSC.longitude = 83.3575;
	[stationList addObject:KOSC];

	VXReportingStation *KOSH = [VXReportingStation new];
	KOSH.stationIdentifier = @"KOSH";
	KOSH.associatedCity = @"OSHKOSH";
	KOSH.associatedState = @"WI";
	KOSH.latitude = 43.9842;
	KOSH.longitude = 88.5569;
	[stationList addObject:KOSH];

	VXReportingStation *KOSU = [VXReportingStation new];
	KOSU.stationIdentifier = @"KOSU";
	KOSU.associatedCity = @"COLUMBUS";
	KOSU.associatedState = @"OH";
	KOSU.latitude = 40.0797;
	KOSU.longitude = 83.0728;
	[stationList addObject:KOSU];

	VXReportingStation *KOTG = [VXReportingStation new];
	KOTG.stationIdentifier = @"KOTG";
	KOTG.associatedCity = @"WORTHINGTON";
	KOTG.associatedState = @"MN";
	KOTG.latitude = 43.655;
	KOTG.longitude = 95.5792;
	[stationList addObject:KOTG];

	VXReportingStation *KOTH = [VXReportingStation new];
	KOTH.stationIdentifier = @"KOTH";
	KOTH.associatedCity = @"NORTH BEND";
	KOTH.associatedState = @"OR";
	KOTH.latitude = 43.4169;
	KOTH.longitude = 124.246;
	[stationList addObject:KOTH];

	VXReportingStation *KOTM = [VXReportingStation new];
	KOTM.stationIdentifier = @"KOTM";
	KOTM.associatedCity = @"OTTUMWA";
	KOTM.associatedState = @"IA";
	KOTM.latitude = 41.1064;
	KOTM.longitude = 92.4478;
	[stationList addObject:KOTM];

	VXReportingStation *KOUN = [VXReportingStation new];
	KOUN.stationIdentifier = @"KOUN";
	KOUN.associatedCity = @"NORMAN";
	KOUN.associatedState = @"OK";
	KOUN.latitude = 35.2456;
	KOUN.longitude = 97.4719;
	[stationList addObject:KOUN];

	VXReportingStation *KOVE = [VXReportingStation new];
	KOVE.stationIdentifier = @"KOVE";
	KOVE.associatedCity = @"OROVILLE";
	KOVE.associatedState = @"CA";
	KOVE.latitude = 39.4878;
	KOVE.longitude = 121.622;
	[stationList addObject:KOVE];

	VXReportingStation *KOVL = [VXReportingStation new];
	KOVL.stationIdentifier = @"KOVL";
	KOVL.associatedCity = @"OLIVIA";
	KOVL.associatedState = @"MN";
	KOVL.latitude = 44.7783;
	KOVL.longitude = 95.0328;
	[stationList addObject:KOVL];

	VXReportingStation *KOVS = [VXReportingStation new];
	KOVS.stationIdentifier = @"KOVS";
	KOVS.associatedCity = @"BOSCOBEL";
	KOVS.associatedState = @"WI";
	KOVS.latitude = 43.1608;
	KOVS.longitude = 90.6736;
	[stationList addObject:KOVS];

	VXReportingStation *KOWA = [VXReportingStation new];
	KOWA.stationIdentifier = @"KOWA";
	KOWA.associatedCity = @"OWATONNA";
	KOWA.associatedState = @"MN";
	KOWA.latitude = 44.1233;
	KOWA.longitude = 93.2606;
	[stationList addObject:KOWA];

	VXReportingStation *KOWB = [VXReportingStation new];
	KOWB.stationIdentifier = @"KOWB";
	KOWB.associatedCity = @"OWENSBORO";
	KOWB.associatedState = @"KY";
	KOWB.latitude = 37.74;
	KOWB.longitude = 87.1667;
	[stationList addObject:KOWB];

	VXReportingStation *KOWD = [VXReportingStation new];
	KOWD.stationIdentifier = @"KOWD";
	KOWD.associatedCity = @"NORWOOD";
	KOWD.associatedState = @"MA";
	KOWD.latitude = 42.1903;
	KOWD.longitude = 71.1728;
	[stationList addObject:KOWD];

	VXReportingStation *KOWP = [VXReportingStation new];
	KOWP.stationIdentifier = @"KOWP";
	KOWP.associatedCity = @"SAND SPRINGS";
	KOWP.associatedState = @"OK";
	KOWP.latitude = 36.1753;
	KOWP.longitude = 96.1517;
	[stationList addObject:KOWP];

	VXReportingStation *KOXB = [VXReportingStation new];
	KOXB.stationIdentifier = @"KOXB";
	KOXB.associatedCity = @"OCEAN CITY";
	KOXB.associatedState = @"MD";
	KOXB.latitude = 38.3103;
	KOXB.longitude = 75.1239;
	[stationList addObject:KOXB];

	VXReportingStation *KOXC = [VXReportingStation new];
	KOXC.stationIdentifier = @"KOXC";
	KOXC.associatedCity = @"OXFORD";
	KOXC.associatedState = @"CT";
	KOXC.latitude = 41.4783;
	KOXC.longitude = 73.135;
	[stationList addObject:KOXC];

	VXReportingStation *KOXI = [VXReportingStation new];
	KOXI.stationIdentifier = @"KOXI";
	KOXI.associatedCity = @"KNOX";
	KOXI.associatedState = @"IN";
	KOXI.latitude = 41.5389;
	KOXI.longitude = 87.5275;
	[stationList addObject:KOXI];

	VXReportingStation *KOXR = [VXReportingStation new];
	KOXR.stationIdentifier = @"KOXR";
	KOXR.associatedCity = @"OXNARD";
	KOXR.associatedState = @"CA";
	KOXR.latitude = 34.2006;
	KOXR.longitude = 119.207;
	[stationList addObject:KOXR];

	VXReportingStation *KOXV = [VXReportingStation new];
	KOXV.stationIdentifier = @"KOXV";
	KOXV.associatedCity = @"KNOXVILLE";
	KOXV.associatedState = @"IA";
	KOXV.latitude = 41.2986;
	KOXV.longitude = 93.1136;
	[stationList addObject:KOXV];

	VXReportingStation *KOZA = [VXReportingStation new];
	KOZA.stationIdentifier = @"KOZA";
	KOZA.associatedCity = @"OZONA";
	KOZA.associatedState = @"TX";
	KOZA.latitude = 30.7311;
	KOZA.longitude = 101.203;
	[stationList addObject:KOZA];

	VXReportingStation *KOZR = [VXReportingStation new];
	KOZR.stationIdentifier = @"KOZR";
	KOZR.associatedCity = @"FORT RUCKER/OZARK";
	KOZR.associatedState = @"AL";
	KOZR.latitude = 31.2756;
	KOZR.longitude = 85.7133;
	[stationList addObject:KOZR];

	VXReportingStation *KOZS = [VXReportingStation new];
	KOZS.stationIdentifier = @"KOZS";
	KOZS.associatedCity = @"CAMDENTON";
	KOZS.associatedState = @"MO";
	KOZS.latitude = 37.9747;
	KOZS.longitude = 92.6911;
	[stationList addObject:KOZS];

	VXReportingStation *KOZW = [VXReportingStation new];
	KOZW.stationIdentifier = @"KOZW";
	KOZW.associatedCity = @"HOWELL";
	KOZW.associatedState = @"MI";
	KOZW.latitude = 42.6294;
	KOZW.longitude = 83.9842;
	[stationList addObject:KOZW];

	VXReportingStation *KP07 = [VXReportingStation new];
	KP07.stationIdentifier = @"KP07";
	KP07.associatedCity = @"SANDERSON";
	KP07.associatedState = @"TX";
	KP07.latitude = 30.3667;
	KP07.longitude = 102.35;
	[stationList addObject:KP07];

	VXReportingStation *KP08 = [VXReportingStation new];
	KP08.stationIdentifier = @"KP08";
	KP08.associatedCity = @"COOLIDGE";
	KP08.associatedState = @"AZ";
	KP08.latitude = 32.9367;
	KP08.longitude = 111.422;
	[stationList addObject:KP08];

	VXReportingStation *KP28 = [VXReportingStation new];
	KP28.stationIdentifier = @"KP28";
	KP28.associatedCity = @"MEDICINE LODGE";
	KP28.associatedState = @"KS";
	KP28.latitude = 37.3;
	KP28.longitude = 98.5503;
	[stationList addObject:KP28];

	VXReportingStation *KP35 = [VXReportingStation new];
	KP35.stationIdentifier = @"KP35";
	KP35.associatedCity = @"SPICKARD";
	KP35.associatedState = @"MO";
	KP35.latitude = 40.1667;
	KP35.longitude = 93.5;
	[stationList addObject:KP35];

	VXReportingStation *KP58 = [VXReportingStation new];
	KP58.stationIdentifier = @"KP58";
	KP58.associatedCity = @"HARBOR BEACH";
	KP58.associatedState = @"MI";
	KP58.latitude = 43.85;
	KP58.longitude = 82.6497;
	[stationList addObject:KP58];

	VXReportingStation *KP59 = [VXReportingStation new];
	KP59.stationIdentifier = @"KP59";
	KP59.associatedCity = @"COPPER HARBOR";
	KP59.associatedState = @"MI";
	KP59.latitude = 47.4497;
	KP59.longitude = 87.9;
	[stationList addObject:KP59];

	VXReportingStation *KP60 = [VXReportingStation new];
	KP60.stationIdentifier = @"KP60";
	KP60.associatedCity = @"YELLOWSTONE";
	KP60.associatedState = @"MT";
	KP60.latitude = 44.6831;
	KP60.longitude = 111.117;
	[stationList addObject:KP60];

	VXReportingStation *KP67 = [VXReportingStation new];
	KP67.stationIdentifier = @"KP67";
	KP67.associatedCity = @"LIDGERWOOD";
	KP67.associatedState = @"ND";
	KP67.latitude = 46.1331;
	KP67.longitude = 97.2336;
	[stationList addObject:KP67];

	VXReportingStation *KP68 = [VXReportingStation new];
	KP68.stationIdentifier = @"KP68";
	KP68.associatedCity = @"EUREKA";
	KP68.associatedState = @"NV";
	KP68.latitude = 39.5167;
	KP68.longitude = 115.968;
	[stationList addObject:KP68];

	VXReportingStation *KPAE = [VXReportingStation new];
	KPAE.stationIdentifier = @"KPAE";
	KPAE.associatedCity = @"EVERETT";
	KPAE.associatedState = @"WA";
	KPAE.latitude = 47.9061;
	KPAE.longitude = 122.281;
	[stationList addObject:KPAE];

	VXReportingStation *KPAH = [VXReportingStation new];
	KPAH.stationIdentifier = @"KPAH";
	KPAH.associatedCity = @"PADUCAH";
	KPAH.associatedState = @"KY";
	KPAH.latitude = 37.0608;
	KPAH.longitude = 88.7736;
	[stationList addObject:KPAH];

	VXReportingStation *KPAM = [VXReportingStation new];
	KPAM.stationIdentifier = @"KPAM";
	KPAM.associatedCity = @"PANAMA CITY";
	KPAM.associatedState = @"FL";
	KPAM.latitude = 30.07;
	KPAM.longitude = 85.5764;
	[stationList addObject:KPAM];

	VXReportingStation *KPAN = [VXReportingStation new];
	KPAN.stationIdentifier = @"KPAN";
	KPAN.associatedCity = @"PAYSON";
	KPAN.associatedState = @"AZ";
	KPAN.latitude = 34.2567;
	KPAN.longitude = 111.339;
	[stationList addObject:KPAN];

	VXReportingStation *KPAO = [VXReportingStation new];
	KPAO.stationIdentifier = @"KPAO";
	KPAO.associatedCity = @"PALO ALTO";
	KPAO.associatedState = @"CA";
	KPAO.latitude = 37.4611;
	KPAO.longitude = 122.115;
	[stationList addObject:KPAO];

	VXReportingStation *KPBF = [VXReportingStation new];
	KPBF.stationIdentifier = @"KPBF";
	KPBF.associatedCity = @"PINE BLUFF";
	KPBF.associatedState = @"AR";
	KPBF.latitude = 34.1731;
	KPBF.longitude = 91.9356;
	[stationList addObject:KPBF];

	VXReportingStation *KPBG = [VXReportingStation new];
	KPBG.stationIdentifier = @"KPBG";
	KPBG.associatedCity = @"PLATTSBURGH";
	KPBG.associatedState = @"NY";
	KPBG.latitude = 44.6508;
	KPBG.longitude = 73.4681;
	[stationList addObject:KPBG];

	VXReportingStation *KPBH = [VXReportingStation new];
	KPBH.stationIdentifier = @"KPBH";
	KPBH.associatedCity = @"PHILLIPS";
	KPBH.associatedState = @"WI";
	KPBH.latitude = 45.7089;
	KPBH.longitude = 90.4022;
	[stationList addObject:KPBH];

	VXReportingStation *KPBI = [VXReportingStation new];
	KPBI.stationIdentifier = @"KPBI";
	KPBI.associatedCity = @"WEST PALM BEACH";
	KPBI.associatedState = @"FL";
	KPBI.latitude = 26.6831;
	KPBI.longitude = 80.0956;
	[stationList addObject:KPBI];

	VXReportingStation *KPBX = [VXReportingStation new];
	KPBX.stationIdentifier = @"KPBX";
	KPBX.associatedCity = @"PIKEVILLE";
	KPBX.associatedState = @"KY";
	KPBX.latitude = 37.5622;
	KPBX.longitude = 82.5656;
	[stationList addObject:KPBX];

	VXReportingStation *KPCM = [VXReportingStation new];
	KPCM.stationIdentifier = @"KPCM";
	KPCM.associatedCity = @"PLANT CITY";
	KPCM.associatedState = @"FL";
	KPCM.latitude = 28;
	KPCM.longitude = 82.1642;
	[stationList addObject:KPCM];

	VXReportingStation *KPCZ = [VXReportingStation new];
	KPCZ.stationIdentifier = @"KPCZ";
	KPCZ.associatedCity = @"WAUPACA";
	KPCZ.associatedState = @"WI";
	KPCZ.latitude = 44.3331;
	KPCZ.longitude = 89.0197;
	[stationList addObject:KPCZ];

	VXReportingStation *KPDK = [VXReportingStation new];
	KPDK.stationIdentifier = @"KPDK";
	KPDK.associatedCity = @"ATLANTA";
	KPDK.associatedState = @"GA";
	KPDK.latitude = 33.8756;
	KPDK.longitude = 84.3019;
	[stationList addObject:KPDK];

	VXReportingStation *KPDT = [VXReportingStation new];
	KPDT.stationIdentifier = @"KPDT";
	KPDT.associatedCity = @"PENDLETON";
	KPDT.associatedState = @"OR";
	KPDT.latitude = 45.695;
	KPDT.longitude = 118.841;
	[stationList addObject:KPDT];

	VXReportingStation *KPDX = [VXReportingStation new];
	KPDX.stationIdentifier = @"KPDX";
	KPDX.associatedCity = @"PORTLAND";
	KPDX.associatedState = @"OR";
	KPDX.latitude = 45.5886;
	KPDX.longitude = 122.597;
	[stationList addObject:KPDX];

	VXReportingStation *KPEA = [VXReportingStation new];
	KPEA.stationIdentifier = @"KPEA";
	KPEA.associatedCity = @"PELLA";
	KPEA.associatedState = @"IA";
	KPEA.latitude = 41.4;
	KPEA.longitude = 92.9458;
	[stationList addObject:KPEA];

	VXReportingStation *KPEO = [VXReportingStation new];
	KPEO.stationIdentifier = @"KPEO";
	KPEO.associatedCity = @"PENN YAN";
	KPEO.associatedState = @"NY";
	KPEO.latitude = 42.6369;
	KPEO.longitude = 77.0528;
	[stationList addObject:KPEO];

	VXReportingStation *KPEQ = [VXReportingStation new];
	KPEQ.stationIdentifier = @"KPEQ";
	KPEQ.associatedCity = @"PECOS";
	KPEQ.associatedState = @"TX";
	KPEQ.latitude = 31.3822;
	KPEQ.longitude = 103.511;
	[stationList addObject:KPEQ];

	VXReportingStation *KPEX = [VXReportingStation new];
	KPEX.stationIdentifier = @"KPEX";
	KPEX.associatedCity = @"PAYNESVILLE";
	KPEX.associatedState = @"MN";
	KPEX.latitude = 45.3722;
	KPEX.longitude = 94.7464;
	[stationList addObject:KPEX];

	VXReportingStation *KPEZ = [VXReportingStation new];
	KPEZ.stationIdentifier = @"KPEZ";
	KPEZ.associatedCity = @"PLEASANTON";
	KPEZ.associatedState = @"TX";
	KPEZ.latitude = 28.9542;
	KPEZ.longitude = 98.5197;
	[stationList addObject:KPEZ];

	VXReportingStation *KPGA = [VXReportingStation new];
	KPGA.stationIdentifier = @"KPGA";
	KPGA.associatedCity = @"PAGE";
	KPGA.associatedState = @"AZ";
	KPGA.latitude = 36.9261;
	KPGA.longitude = 111.448;
	[stationList addObject:KPGA];

	VXReportingStation *KPGD = [VXReportingStation new];
	KPGD.stationIdentifier = @"KPGD";
	KPGD.associatedCity = @"PUNTA GORDA";
	KPGD.associatedState = @"FL";
	KPGD.latitude = 26.92;
	KPGD.longitude = 81.9903;
	[stationList addObject:KPGD];

	VXReportingStation *KPGV = [VXReportingStation new];
	KPGV.stationIdentifier = @"KPGV";
	KPGV.associatedCity = @"GREENVILLE";
	KPGV.associatedState = @"NC";
	KPGV.latitude = 35.635;
	KPGV.longitude = 77.3853;
	[stationList addObject:KPGV];

	VXReportingStation *KPHD = [VXReportingStation new];
	KPHD.stationIdentifier = @"KPHD";
	KPHD.associatedCity = @"NEW PHILADELPHIA";
	KPHD.associatedState = @"OH";
	KPHD.latitude = 40.4703;
	KPHD.longitude = 81.42;
	[stationList addObject:KPHD];

	VXReportingStation *KPHF = [VXReportingStation new];
	KPHF.stationIdentifier = @"KPHF";
	KPHF.associatedCity = @"NEWPORT NEWS";
	KPHF.associatedState = @"VA";
	KPHF.latitude = 37.1317;
	KPHF.longitude = 76.4928;
	[stationList addObject:KPHF];

	VXReportingStation *KPHL = [VXReportingStation new];
	KPHL.stationIdentifier = @"KPHL";
	KPHL.associatedCity = @"PHILADELPHIA";
	KPHL.associatedState = @"PA";
	KPHL.latitude = 39.8719;
	KPHL.longitude = 75.2411;
	[stationList addObject:KPHL];

	VXReportingStation *KPHN = [VXReportingStation new];
	KPHN.stationIdentifier = @"KPHN";
	KPHN.associatedCity = @"PORT HURON";
	KPHN.associatedState = @"MI";
	KPHN.latitude = 42.9108;
	KPHN.longitude = 82.5286;
	[stationList addObject:KPHN];

	VXReportingStation *KPHP = [VXReportingStation new];
	KPHP.stationIdentifier = @"KPHP";
	KPHP.associatedCity = @"PHILIP";
	KPHP.associatedState = @"SD";
	KPHP.latitude = 44.0511;
	KPHP.longitude = 101.601;
	[stationList addObject:KPHP];

	VXReportingStation *KPHT = [VXReportingStation new];
	KPHT.stationIdentifier = @"KPHT";
	KPHT.associatedCity = @"PARIS";
	KPHT.associatedState = @"TN";
	KPHT.latitude = 36.3383;
	KPHT.longitude = 88.3828;
	[stationList addObject:KPHT];

	VXReportingStation *KPHX = [VXReportingStation new];
	KPHX.stationIdentifier = @"KPHX";
	KPHX.associatedCity = @"PHOENIX";
	KPHX.associatedState = @"AZ";
	KPHX.latitude = 33.4342;
	KPHX.longitude = 112.011;
	[stationList addObject:KPHX];

	VXReportingStation *KPIA = [VXReportingStation new];
	KPIA.stationIdentifier = @"KPIA";
	KPIA.associatedCity = @"PEORIA";
	KPIA.associatedState = @"IL";
	KPIA.latitude = 40.6642;
	KPIA.longitude = 89.6931;
	[stationList addObject:KPIA];

	VXReportingStation *KPIB = [VXReportingStation new];
	KPIB.stationIdentifier = @"KPIB";
	KPIB.associatedCity = @"HATTIESBURG/LAUREL";
	KPIB.associatedState = @"MS";
	KPIB.latitude = 31.4669;
	KPIB.longitude = 89.3369;
	[stationList addObject:KPIB];

	VXReportingStation *KPIE = [VXReportingStation new];
	KPIE.stationIdentifier = @"KPIE";
	KPIE.associatedCity = @"ST PETERSBURG-CLEARWATER";
	KPIE.associatedState = @"FL";
	KPIE.latitude = 27.9106;
	KPIE.longitude = 82.6872;
	[stationList addObject:KPIE];

	VXReportingStation *KPIH = [VXReportingStation new];
	KPIH.stationIdentifier = @"KPIH";
	KPIH.associatedCity = @"POCATELLO";
	KPIH.associatedState = @"ID";
	KPIH.latitude = 42.9097;
	KPIH.longitude = 112.596;
	[stationList addObject:KPIH];

	VXReportingStation *KPIL = [VXReportingStation new];
	KPIL.stationIdentifier = @"KPIL";
	KPIL.associatedCity = @"PORT ISABEL";
	KPIL.associatedState = @"TX";
	KPIL.latitude = 26.1661;
	KPIL.longitude = 97.3458;
	[stationList addObject:KPIL];

	VXReportingStation *KPIR = [VXReportingStation new];
	KPIR.stationIdentifier = @"KPIR";
	KPIR.associatedCity = @"PIERRE";
	KPIR.associatedState = @"SD";
	KPIR.latitude = 44.3825;
	KPIR.longitude = 100.286;
	[stationList addObject:KPIR];

	VXReportingStation *KPIT = [VXReportingStation new];
	KPIT.stationIdentifier = @"KPIT";
	KPIT.associatedCity = @"PITTSBURGH";
	KPIT.associatedState = @"PA";
	KPIT.latitude = 40.4914;
	KPIT.longitude = 80.2328;
	[stationList addObject:KPIT];

	VXReportingStation *KPKB = [VXReportingStation new];
	KPKB.stationIdentifier = @"KPKB";
	KPKB.associatedCity = @"PARKERSBURG";
	KPKB.associatedState = @"WV";
	KPKB.latitude = 39.345;
	KPKB.longitude = 81.4392;
	[stationList addObject:KPKB];

	VXReportingStation *KPKD = [VXReportingStation new];
	KPKD.stationIdentifier = @"KPKD";
	KPKD.associatedCity = @"PARK RAPIDS";
	KPKD.associatedState = @"MN";
	KPKD.latitude = 46.9006;
	KPKD.longitude = 95.0731;
	[stationList addObject:KPKD];

	VXReportingStation *KPKV = [VXReportingStation new];
	KPKV.stationIdentifier = @"KPKV";
	KPKV.associatedCity = @"PORT LAVACA";
	KPKV.associatedState = @"TX";
	KPKV.latitude = 28.6539;
	KPKV.longitude = 96.6811;
	[stationList addObject:KPKV];

	VXReportingStation *KPLN = [VXReportingStation new];
	KPLN.stationIdentifier = @"KPLN";
	KPLN.associatedCity = @"PELLSTON";
	KPLN.associatedState = @"MI";
	KPLN.latitude = 45.5708;
	KPLN.longitude = 84.7967;
	[stationList addObject:KPLN];

	VXReportingStation *KPLU = [VXReportingStation new];
	KPLU.stationIdentifier = @"KPLU";
	KPLU.associatedCity = @"PUYALLUP";
	KPLU.associatedState = @"WA";
	KPLU.latitude = 47.1003;
	KPLU.longitude = 122.287;
	[stationList addObject:KPLU];

	VXReportingStation *KPMD = [VXReportingStation new];
	KPMD.stationIdentifier = @"KPMD";
	KPMD.associatedCity = @"PALMDALE";
	KPMD.associatedState = @"CA";
	KPMD.latitude = 34.6292;
	KPMD.longitude = 118.084;
	[stationList addObject:KPMD];

	VXReportingStation *KPMP = [VXReportingStation new];
	KPMP.stationIdentifier = @"KPMP";
	KPMP.associatedCity = @"POMPANO BEACH";
	KPMP.associatedState = @"FL";
	KPMP.latitude = 26.2469;
	KPMP.longitude = 80.1108;
	[stationList addObject:KPMP];

	VXReportingStation *KPMV = [VXReportingStation new];
	KPMV.stationIdentifier = @"KPMV";
	KPMV.associatedCity = @"PLATTSMOUTH";
	KPMV.associatedState = @"NE";
	KPMV.latitude = 40.95;
	KPMV.longitude = 95.9178;
	[stationList addObject:KPMV];

	VXReportingStation *KPNA = [VXReportingStation new];
	KPNA.stationIdentifier = @"KPNA";
	KPNA.associatedCity = @"PINEDALE";
	KPNA.associatedState = @"WY";
	KPNA.latitude = 42.7953;
	KPNA.longitude = 109.807;
	[stationList addObject:KPNA];

	VXReportingStation *KPNC = [VXReportingStation new];
	KPNC.stationIdentifier = @"KPNC";
	KPNC.associatedCity = @"PONCA CITY";
	KPNC.associatedState = @"OK";
	KPNC.latitude = 36.7319;
	KPNC.longitude = 97.0997;
	[stationList addObject:KPNC];

	VXReportingStation *KPNE = [VXReportingStation new];
	KPNE.stationIdentifier = @"KPNE";
	KPNE.associatedCity = @"PHILADELPHIA";
	KPNE.associatedState = @"PA";
	KPNE.latitude = 40.0817;
	KPNE.longitude = 75.0106;
	[stationList addObject:KPNE];

	VXReportingStation *KPNM = [VXReportingStation new];
	KPNM.stationIdentifier = @"KPNM";
	KPNM.associatedCity = @"PRINCETON";
	KPNM.associatedState = @"MN";
	KPNM.latitude = 45.5597;
	KPNM.longitude = 93.6081;
	[stationList addObject:KPNM];

	VXReportingStation *KPNS = [VXReportingStation new];
	KPNS.stationIdentifier = @"KPNS";
	KPNS.associatedCity = @"PENSACOLA";
	KPNS.associatedState = @"FL";
	KPNS.latitude = 30.4731;
	KPNS.longitude = 87.1872;
	[stationList addObject:KPNS];

	VXReportingStation *KPNT = [VXReportingStation new];
	KPNT.stationIdentifier = @"KPNT";
	KPNT.associatedCity = @"PONTIAC";
	KPNT.associatedState = @"IL";
	KPNT.latitude = 40.9242;
	KPNT.longitude = 88.6236;
	[stationList addObject:KPNT];

	VXReportingStation *KPOB = [VXReportingStation new];
	KPOB.stationIdentifier = @"KPOB";
	KPOB.associatedCity = @"FAYETTEVILLE";
	KPOB.associatedState = @"NC";
	KPOB.latitude = 35.1708;
	KPOB.longitude = 79.0144;
	[stationList addObject:KPOB];

	VXReportingStation *KPOC = [VXReportingStation new];
	KPOC.stationIdentifier = @"KPOC";
	KPOC.associatedCity = @"LA VERNE";
	KPOC.associatedState = @"CA";
	KPOC.latitude = 34.0914;
	KPOC.longitude = 117.782;
	[stationList addObject:KPOC];

	VXReportingStation *KPOE = [VXReportingStation new];
	KPOE.stationIdentifier = @"KPOE";
	KPOE.associatedCity = @"FORT POLK";
	KPOE.associatedState = @"LA";
	KPOE.latitude = 31.0447;
	KPOE.longitude = 93.1917;
	[stationList addObject:KPOE];

	VXReportingStation *KPOF = [VXReportingStation new];
	KPOF.stationIdentifier = @"KPOF";
	KPOF.associatedCity = @"POPLAR BLUFF";
	KPOF.associatedState = @"MO";
	KPOF.latitude = 36.7739;
	KPOF.longitude = 90.3247;
	[stationList addObject:KPOF];

	VXReportingStation *KPOU = [VXReportingStation new];
	KPOU.stationIdentifier = @"KPOU";
	KPOU.associatedCity = @"POUGHKEEPSIE";
	KPOU.associatedState = @"NY";
	KPOU.latitude = 41.6264;
	KPOU.longitude = 73.8839;
	[stationList addObject:KPOU];

	VXReportingStation *KPOV = [VXReportingStation new];
	KPOV.stationIdentifier = @"KPOV";
	KPOV.associatedCity = @"RAVENNA";
	KPOV.associatedState = @"OH";
	KPOV.latitude = 41.2089;
	KPOV.longitude = 81.2478;
	[stationList addObject:KPOV];

	VXReportingStation *KPPA = [VXReportingStation new];
	KPPA.stationIdentifier = @"KPPA";
	KPPA.associatedCity = @"PAMPA";
	KPPA.associatedState = @"TX";
	KPPA.latitude = 35.6128;
	KPPA.longitude = 100.996;
	[stationList addObject:KPPA];

	VXReportingStation *KPPF = [VXReportingStation new];
	KPPF.stationIdentifier = @"KPPF";
	KPPF.associatedCity = @"PARSONS";
	KPPF.associatedState = @"KS";
	KPPF.latitude = 37.3297;
	KPPF.longitude = 95.5061;
	[stationList addObject:KPPF];

	VXReportingStation *KPPO = [VXReportingStation new];
	KPPO.stationIdentifier = @"KPPO";
	KPPO.associatedCity = @"LA PORTE";
	KPPO.associatedState = @"IN";
	KPPO.latitude = 41.5722;
	KPPO.longitude = 86.7344;
	[stationList addObject:KPPO];

	VXReportingStation *KPPQ = [VXReportingStation new];
	KPPQ.stationIdentifier = @"KPPQ";
	KPPQ.associatedCity = @"PITTSFIELD";
	KPPQ.associatedState = @"IL";
	KPPQ.latitude = 39.6386;
	KPPQ.longitude = 90.7783;
	[stationList addObject:KPPQ];

	VXReportingStation *KPQI = [VXReportingStation new];
	KPQI.stationIdentifier = @"KPQI";
	KPQI.associatedCity = @"PRESQUE ISLE";
	KPQI.associatedState = @"ME";
	KPQI.latitude = 46.6889;
	KPQI.longitude = 68.0447;
	[stationList addObject:KPQI];

	VXReportingStation *KPQL = [VXReportingStation new];
	KPQL.stationIdentifier = @"KPQL";
	KPQL.associatedCity = @"PASCAGOULA";
	KPQL.associatedState = @"MS";
	KPQL.latitude = 30.4628;
	KPQL.longitude = 88.5292;
	[stationList addObject:KPQL];

	VXReportingStation *KPQN = [VXReportingStation new];
	KPQN.stationIdentifier = @"KPQN";
	KPQN.associatedCity = @"PIPESTONE";
	KPQN.associatedState = @"MN";
	KPQN.latitude = 43.9831;
	KPQN.longitude = 96.3003;
	[stationList addObject:KPQN];

	VXReportingStation *KPRB = [VXReportingStation new];
	KPRB.stationIdentifier = @"KPRB";
	KPRB.associatedCity = @"PASO ROBLES";
	KPRB.associatedState = @"CA";
	KPRB.latitude = 35.6728;
	KPRB.longitude = 120.627;
	[stationList addObject:KPRB];

	VXReportingStation *KPRC = [VXReportingStation new];
	KPRC.stationIdentifier = @"KPRC";
	KPRC.associatedCity = @"PRESCOTT";
	KPRC.associatedState = @"AZ";
	KPRC.latitude = 34.6544;
	KPRC.longitude = 112.419;
	[stationList addObject:KPRC];

	VXReportingStation *KPRG = [VXReportingStation new];
	KPRG.stationIdentifier = @"KPRG";
	KPRG.associatedCity = @"PARIS";
	KPRG.associatedState = @"IL";
	KPRG.latitude = 39.7;
	KPRG.longitude = 87.6694;
	[stationList addObject:KPRG];

	VXReportingStation *KPRN = [VXReportingStation new];
	KPRN.stationIdentifier = @"KPRN";
	KPRN.associatedCity = @"GREENVILLE";
	KPRN.associatedState = @"AL";
	KPRN.latitude = 31.8456;
	KPRN.longitude = 86.6106;
	[stationList addObject:KPRN];

	VXReportingStation *KPRO = [VXReportingStation new];
	KPRO.stationIdentifier = @"KPRO";
	KPRO.associatedCity = @"PERRY";
	KPRO.associatedState = @"IA";
	KPRO.latitude = 41.8278;
	KPRO.longitude = 94.1597;
	[stationList addObject:KPRO];

	VXReportingStation *KPRS = [VXReportingStation new];
	KPRS.stationIdentifier = @"KPRS";
	KPRS.associatedCity = @"PRESIDIO";
	KPRS.associatedState = @"TX";
	KPRS.latitude = 29.6344;
	KPRS.longitude = 104.358;
	[stationList addObject:KPRS];

	VXReportingStation *KPRX = [VXReportingStation new];
	KPRX.stationIdentifier = @"KPRX";
	KPRX.associatedCity = @"PARIS";
	KPRX.associatedState = @"TX";
	KPRX.latitude = 33.6364;
	KPRX.longitude = 95.4506;
	[stationList addObject:KPRX];

	VXReportingStation *KPSB = [VXReportingStation new];
	KPSB.stationIdentifier = @"KPSB";
	KPSB.associatedCity = @"PHILIPSBURG";
	KPSB.associatedState = @"PA";
	KPSB.latitude = 40.8842;
	KPSB.longitude = 78.0872;
	[stationList addObject:KPSB];

	VXReportingStation *KPSC = [VXReportingStation new];
	KPSC.stationIdentifier = @"KPSC";
	KPSC.associatedCity = @"PASCO";
	KPSC.associatedState = @"WA";
	KPSC.latitude = 46.2644;
	KPSC.longitude = 119.119;
	[stationList addObject:KPSC];

	VXReportingStation *KPSF = [VXReportingStation new];
	KPSF.stationIdentifier = @"KPSF";
	KPSF.associatedCity = @"PITTSFIELD";
	KPSF.associatedState = @"MA";
	KPSF.latitude = 42.4267;
	KPSF.longitude = 73.2928;
	[stationList addObject:KPSF];

	VXReportingStation *KPSK = [VXReportingStation new];
	KPSK.stationIdentifier = @"KPSK";
	KPSK.associatedCity = @"DUBLIN";
	KPSK.associatedState = @"VA";
	KPSK.latitude = 37.1372;
	KPSK.longitude = 80.6783;
	[stationList addObject:KPSK];

	VXReportingStation *KPSM = [VXReportingStation new];
	KPSM.stationIdentifier = @"KPSM";
	KPSM.associatedCity = @"PORTSMOUTH";
	KPSM.associatedState = @"NH";
	KPSM.latitude = 43.0778;
	KPSM.longitude = 70.8231;
	[stationList addObject:KPSM];

	VXReportingStation *KPSN = [VXReportingStation new];
	KPSN.stationIdentifier = @"KPSN";
	KPSN.associatedCity = @"PALESTINE";
	KPSN.associatedState = @"TX";
	KPSN.latitude = 31.7794;
	KPSN.longitude = 95.7061;
	[stationList addObject:KPSN];

	VXReportingStation *KPSO = [VXReportingStation new];
	KPSO.stationIdentifier = @"KPSO";
	KPSO.associatedCity = @"PAGOSA SPRINGS";
	KPSO.associatedState = @"CO";
	KPSO.latitude = 37.2908;
	KPSO.longitude = 107.056;
	[stationList addObject:KPSO];

	VXReportingStation *KPSP = [VXReportingStation new];
	KPSP.stationIdentifier = @"KPSP";
	KPSP.associatedCity = @"PALM SPRINGS";
	KPSP.associatedState = @"CA";
	KPSP.latitude = 33.8294;
	KPSP.longitude = 116.507;
	[stationList addObject:KPSP];

	VXReportingStation *KPSX = [VXReportingStation new];
	KPSX.stationIdentifier = @"KPSX";
	KPSX.associatedCity = @"PALACIOS";
	KPSX.associatedState = @"TX";
	KPSX.latitude = 28.7275;
	KPSX.longitude = 96.2508;
	[stationList addObject:KPSX];

	VXReportingStation *KPTB = [VXReportingStation new];
	KPTB.stationIdentifier = @"KPTB";
	KPTB.associatedCity = @"PETERSBURG";
	KPTB.associatedState = @"VA";
	KPTB.latitude = 37.1836;
	KPTB.longitude = 77.5072;
	[stationList addObject:KPTB];

	VXReportingStation *KPTD = [VXReportingStation new];
	KPTD.stationIdentifier = @"KPTD";
	KPTD.associatedCity = @"POTSDAM";
	KPTD.associatedState = @"NY";
	KPTD.latitude = 44.6767;
	KPTD.longitude = 74.9483;
	[stationList addObject:KPTD];

	VXReportingStation *KPTK = [VXReportingStation new];
	KPTK.stationIdentifier = @"KPTK";
	KPTK.associatedCity = @"PONTIAC";
	KPTK.associatedState = @"MI";
	KPTK.latitude = 42.6653;
	KPTK.longitude = 83.42;
	[stationList addObject:KPTK];

	VXReportingStation *KPTN = [VXReportingStation new];
	KPTN.stationIdentifier = @"KPTN";
	KPTN.associatedCity = @"PATTERSON";
	KPTN.associatedState = @"LA";
	KPTN.latitude = 29.7094;
	KPTN.longitude = 91.3389;
	[stationList addObject:KPTN];

	VXReportingStation *KPTS = [VXReportingStation new];
	KPTS.stationIdentifier = @"KPTS";
	KPTS.associatedCity = @"PITTSBURG";
	KPTS.associatedState = @"KS";
	KPTS.latitude = 37.4494;
	KPTS.longitude = 94.7311;
	[stationList addObject:KPTS];

	VXReportingStation *KPTV = [VXReportingStation new];
	KPTV.stationIdentifier = @"KPTV";
	KPTV.associatedCity = @"PORTERVILLE";
	KPTV.associatedState = @"CA";
	KPTV.latitude = 36.0294;
	KPTV.longitude = 119.062;
	[stationList addObject:KPTV];

	VXReportingStation *KPTW = [VXReportingStation new];
	KPTW.stationIdentifier = @"KPTW";
	KPTW.associatedCity = @"POTTSTOWN";
	KPTW.associatedState = @"PA";
	KPTW.latitude = 40.2394;
	KPTW.longitude = 75.5567;
	[stationList addObject:KPTW];

	VXReportingStation *KPUB = [VXReportingStation new];
	KPUB.stationIdentifier = @"KPUB";
	KPUB.associatedCity = @"PUEBLO";
	KPUB.associatedState = @"CO";
	KPUB.latitude = 38.2889;
	KPUB.longitude = 104.496;
	[stationList addObject:KPUB];

	VXReportingStation *KPUC = [VXReportingStation new];
	KPUC.stationIdentifier = @"KPUC";
	KPUC.associatedCity = @"PRICE";
	KPUC.associatedState = @"UT";
	KPUC.latitude = 39.6139;
	KPUC.longitude = 110.751;
	[stationList addObject:KPUC];

	VXReportingStation *KPUJ = [VXReportingStation new];
	KPUJ.stationIdentifier = @"KPUJ";
	KPUJ.associatedCity = @"ATLANTA";
	KPUJ.associatedState = @"GA";
	KPUJ.latitude = 35.9192;
	KPUJ.longitude = 84.9517;
	[stationList addObject:KPUJ];

	VXReportingStation *KPUW = [VXReportingStation new];
	KPUW.stationIdentifier = @"KPUW";
	KPUW.associatedCity = @"PULLMAN/MOSCOW,ID";
	KPUW.associatedState = @"WA";
	KPUW.latitude = 46.7436;
	KPUW.longitude = 117.109;
	[stationList addObject:KPUW];

	VXReportingStation *KPVC = [VXReportingStation new];
	KPVC.stationIdentifier = @"KPVC";
	KPVC.associatedCity = @"PROVINCETOWN";
	KPVC.associatedState = @"MA";
	KPVC.latitude = 42.0719;
	KPVC.longitude = 70.2211;
	[stationList addObject:KPVC];

	VXReportingStation *KPVD = [VXReportingStation new];
	KPVD.stationIdentifier = @"KPVD";
	KPVD.associatedCity = @"PROVIDENCE";
	KPVD.associatedState = @"RI";
	KPVD.latitude = 41.7239;
	KPVD.longitude = 71.4281;
	[stationList addObject:KPVD];

	VXReportingStation *KPVE = [VXReportingStation new];
	KPVE.stationIdentifier = @"KPVE";
	KPVE.associatedCity = @"LEXINGTON-PARSONS";
	KPVE.associatedState = @"TN";
	KPVE.latitude = 35.6561;
	KPVE.longitude = 88.1953;
	[stationList addObject:KPVE];

	VXReportingStation *KPVG = [VXReportingStation new];
	KPVG.stationIdentifier = @"KPVG";
	KPVG.associatedCity = @"NORFOLK";
	KPVG.associatedState = @"VA";
	KPVG.latitude = 36.78;
	KPVG.longitude = 76.4486;
	[stationList addObject:KPVG];

	VXReportingStation *KPVJ = [VXReportingStation new];
	KPVJ.stationIdentifier = @"KPVJ";
	KPVJ.associatedCity = @"PAULS VALLEY";
	KPVJ.associatedState = @"OK";
	KPVJ.latitude = 34.7108;
	KPVJ.longitude = 97.2231;
	[stationList addObject:KPVJ];

	VXReportingStation *KPVU = [VXReportingStation new];
	KPVU.stationIdentifier = @"KPVU";
	KPVU.associatedCity = @"PROVO";
	KPVU.associatedState = @"UT";
	KPVU.latitude = 40.2192;
	KPVU.longitude = 111.723;
	[stationList addObject:KPVU];

	VXReportingStation *KPVW = [VXReportingStation new];
	KPVW.stationIdentifier = @"KPVW";
	KPVW.associatedCity = @"PLAINVIEW";
	KPVW.associatedState = @"TX";
	KPVW.latitude = 34.1681;
	KPVW.longitude = 101.717;
	[stationList addObject:KPVW];

	VXReportingStation *KPWA = [VXReportingStation new];
	KPWA.stationIdentifier = @"KPWA";
	KPWA.associatedCity = @"OKLAHOMA CITY";
	KPWA.associatedState = @"OK";
	KPWA.latitude = 35.5339;
	KPWA.longitude = 97.6469;
	[stationList addObject:KPWA];

	VXReportingStation *KPWC = [VXReportingStation new];
	KPWC.stationIdentifier = @"KPWC";
	KPWC.associatedCity = @"PINE RIVER";
	KPWC.associatedState = @"MN";
	KPWC.latitude = 46.7247;
	KPWC.longitude = 94.3817;
	[stationList addObject:KPWC];

	VXReportingStation *KPWG = [VXReportingStation new];
	KPWG.stationIdentifier = @"KPWG";
	KPWG.associatedCity = @"WACO";
	KPWG.associatedState = @"TX";
	KPWG.latitude = 31.4847;
	KPWG.longitude = 97.3164;
	[stationList addObject:KPWG];

	VXReportingStation *KPWK = [VXReportingStation new];
	KPWK.stationIdentifier = @"KPWK";
	KPWK.associatedCity = @"CHICAGO/PROSPECT HEIGHTS/W";
	KPWK.associatedState = @"IL";
	KPWK.latitude = 42.1142;
	KPWK.longitude = 87.9014;
	[stationList addObject:KPWK];

	VXReportingStation *KPWM = [VXReportingStation new];
	KPWM.stationIdentifier = @"KPWM";
	KPWM.associatedCity = @"PORTLAND";
	KPWM.associatedState = @"ME";
	KPWM.latitude = 43.6461;
	KPWM.longitude = 70.3092;
	[stationList addObject:KPWM];

	VXReportingStation *KPWT = [VXReportingStation new];
	KPWT.stationIdentifier = @"KPWT";
	KPWT.associatedCity = @"BREMERTON";
	KPWT.associatedState = @"WA";
	KPWT.latitude = 47.4925;
	KPWT.longitude = 122.762;
	[stationList addObject:KPWT];

	VXReportingStation *KPXE = [VXReportingStation new];
	KPXE.stationIdentifier = @"KPXE";
	KPXE.associatedCity = @"PERRY";
	KPXE.associatedState = @"GA";
	KPXE.latitude = 32.5106;
	KPXE.longitude = 83.7672;
	[stationList addObject:KPXE];

	VXReportingStation *KPYM = [VXReportingStation new];
	KPYM.stationIdentifier = @"KPYM";
	KPYM.associatedCity = @"PLYMOUTH";
	KPYM.associatedState = @"MA";
	KPYM.latitude = 41.9089;
	KPYM.longitude = 70.7286;
	[stationList addObject:KPYM];

	VXReportingStation *KPYX = [VXReportingStation new];
	KPYX.stationIdentifier = @"KPYX";
	KPYX.associatedCity = @"PERRYTON";
	KPYX.associatedState = @"TX";
	KPYX.latitude = 36.4128;
	KPYX.longitude = 100.751;
	[stationList addObject:KPYX];

	VXReportingStation *KPZQ = [VXReportingStation new];
	KPZQ.stationIdentifier = @"KPZQ";
	KPZQ.associatedCity = @"ROGERS CITY";
	KPZQ.associatedState = @"MI";
	KPZQ.latitude = 45.4069;
	KPZQ.longitude = 83.8128;
	[stationList addObject:KPZQ];

	VXReportingStation *KRAC = [VXReportingStation new];
	KRAC.stationIdentifier = @"KRAC";
	KRAC.associatedCity = @"RACINE";
	KRAC.associatedState = @"WI";
	KRAC.latitude = 42.7611;
	KRAC.longitude = 87.8139;
	[stationList addObject:KRAC];

	VXReportingStation *KRAL = [VXReportingStation new];
	KRAL.stationIdentifier = @"KRAL";
	KRAL.associatedCity = @"RIVERSIDE";
	KRAL.associatedState = @"CA";
	KRAL.latitude = 33.9517;
	KRAL.longitude = 117.445;
	[stationList addObject:KRAL];

	VXReportingStation *KRAP = [VXReportingStation new];
	KRAP.stationIdentifier = @"KRAP";
	KRAP.associatedCity = @"RAPID CITY";
	KRAP.associatedState = @"SD";
	KRAP.latitude = 44.0453;
	KRAP.longitude = 103.057;
	[stationList addObject:KRAP];

	VXReportingStation *KRAS = [VXReportingStation new];
	KRAS.stationIdentifier = @"KRAS";
	KRAS.associatedCity = @"PORT ARANSAS";
	KRAS.associatedState = @"TX";
	KRAS.latitude = 27.8117;
	KRAS.longitude = 97.0886;
	[stationList addObject:KRAS];

	VXReportingStation *KRBD = [VXReportingStation new];
	KRBD.stationIdentifier = @"KRBD";
	KRBD.associatedCity = @"DALLAS";
	KRBD.associatedState = @"TX";
	KRBD.latitude = 32.6808;
	KRBD.longitude = 96.8681;
	[stationList addObject:KRBD];

	VXReportingStation *KRBG = [VXReportingStation new];
	KRBG.stationIdentifier = @"KRBG";
	KRBG.associatedCity = @"ROSEBURG";
	KRBG.associatedState = @"OR";
	KRBG.latitude = 43.2386;
	KRBG.longitude = 123.356;
	[stationList addObject:KRBG];

	VXReportingStation *KRBL = [VXReportingStation new];
	KRBL.stationIdentifier = @"KRBL";
	KRBL.associatedCity = @"RED BLUFF";
	KRBL.associatedState = @"CA";
	KRBL.latitude = 40.1506;
	KRBL.longitude = 122.252;
	[stationList addObject:KRBL];

	VXReportingStation *KRBO = [VXReportingStation new];
	KRBO.stationIdentifier = @"KRBO";
	KRBO.associatedCity = @"ROBSTOWN";
	KRBO.associatedState = @"TX";
	KRBO.latitude = 27.7783;
	KRBO.longitude = 97.6903;
	[stationList addObject:KRBO];

	VXReportingStation *KRBW = [VXReportingStation new];
	KRBW.stationIdentifier = @"KRBW";
	KRBW.associatedCity = @"WALTERBORO";
	KRBW.associatedState = @"SC";
	KRBW.latitude = 32.9206;
	KRBW.longitude = 80.6408;
	[stationList addObject:KRBW];

	VXReportingStation *KRCA = [VXReportingStation new];
	KRCA.stationIdentifier = @"KRCA";
	KRCA.associatedCity = @"RAPID CITY";
	KRCA.associatedState = @"SD";
	KRCA.latitude = 44.145;
	KRCA.longitude = 103.103;
	[stationList addObject:KRCA];

	VXReportingStation *KRCE = [VXReportingStation new];
	KRCE.stationIdentifier = @"KRCE";
	KRCE.associatedCity = @"OKLAHOMA CITY";
	KRCE.associatedState = @"OK";
	KRCE.latitude = 35.4964;
	KRCE.longitude = 97.8247;
	[stationList addObject:KRCE];

	VXReportingStation *KRCM = [VXReportingStation new];
	KRCM.stationIdentifier = @"KRCM";
	KRCM.associatedCity = @"WARRENSBURG";
	KRCM.associatedState = @"MO";
	KRCM.latitude = 38.7842;
	KRCM.longitude = 93.8028;
	[stationList addObject:KRCM];

	VXReportingStation *KRCR = [VXReportingStation new];
	KRCR.stationIdentifier = @"KRCR";
	KRCR.associatedCity = @"ROCHESTER";
	KRCR.associatedState = @"IN";
	KRCR.latitude = 41.0656;
	KRCR.longitude = 86.1817;
	[stationList addObject:KRCR];

	VXReportingStation *KRCV = [VXReportingStation new];
	KRCV.stationIdentifier = @"KRCV";
	KRCV.associatedCity = @"DEL NORTE";
	KRCV.associatedState = @"CO";
	KRCV.latitude = 37.7139;
	KRCV.longitude = 106.352;
	[stationList addObject:KRCV];

	VXReportingStation *KRCX = [VXReportingStation new];
	KRCX.stationIdentifier = @"KRCX";
	KRCX.associatedCity = @"LADYSMITH";
	KRCX.associatedState = @"WI";
	KRCX.latitude = 45.4967;
	KRCX.longitude = 91.0003;
	[stationList addObject:KRCX];

	VXReportingStation *KRCZ = [VXReportingStation new];
	KRCZ.stationIdentifier = @"KRCZ";
	KRCZ.associatedCity = @"ROCKINGHAM";
	KRCZ.associatedState = @"NC";
	KRCZ.latitude = 34.8953;
	KRCZ.longitude = 79.7575;
	[stationList addObject:KRCZ];

	VXReportingStation *KRDD = [VXReportingStation new];
	KRDD.stationIdentifier = @"KRDD";
	KRDD.associatedCity = @"REDDING";
	KRDD.associatedState = @"CA";
	KRDD.latitude = 40.5089;
	KRDD.longitude = 122.293;
	[stationList addObject:KRDD];

	VXReportingStation *KRDG = [VXReportingStation new];
	KRDG.stationIdentifier = @"KRDG";
	KRDG.associatedCity = @"READING";
	KRDG.associatedState = @"PA";
	KRDG.latitude = 40.3783;
	KRDG.longitude = 75.965;
	[stationList addObject:KRDG];

	VXReportingStation *KRDK = [VXReportingStation new];
	KRDK.stationIdentifier = @"KRDK";
	KRDK.associatedCity = @"RED OAK";
	KRDK.associatedState = @"IA";
	KRDK.latitude = 41.0103;
	KRDK.longitude = 95.2597;
	[stationList addObject:KRDK];

	VXReportingStation *KRDM = [VXReportingStation new];
	KRDM.stationIdentifier = @"KRDM";
	KRDM.associatedCity = @"REDMOND";
	KRDM.associatedState = @"OR";
	KRDM.latitude = 44.2539;
	KRDM.longitude = 121.15;
	[stationList addObject:KRDM];

	VXReportingStation *KRDR = [VXReportingStation new];
	KRDR.stationIdentifier = @"KRDR";
	KRDR.associatedCity = @"GRAND FORKS";
	KRDR.associatedState = @"ND";
	KRDR.latitude = 47.9611;
	KRDR.longitude = 97.4011;
	[stationList addObject:KRDR];

	VXReportingStation *KRDU = [VXReportingStation new];
	KRDU.stationIdentifier = @"KRDU";
	KRDU.associatedCity = @"RALEIGH/DURHAM";
	KRDU.associatedState = @"NC";
	KRDU.latitude = 35.8775;
	KRDU.longitude = 78.7872;
	[stationList addObject:KRDU];

	VXReportingStation *KRFD = [VXReportingStation new];
	KRFD.stationIdentifier = @"KRFD";
	KRFD.associatedCity = @"CHICAGO/ROCKFORD";
	KRFD.associatedState = @"IL";
	KRFD.latitude = 42.1953;
	KRFD.longitude = 89.0969;
	[stationList addObject:KRFD];

	VXReportingStation *KRGK = [VXReportingStation new];
	KRGK.stationIdentifier = @"KRGK";
	KRGK.associatedCity = @"RED WING";
	KRGK.associatedState = @"MN";
	KRGK.latitude = 44.5892;
	KRGK.longitude = 92.4847;
	[stationList addObject:KRGK];

	VXReportingStation *KRHI = [VXReportingStation new];
	KRHI.stationIdentifier = @"KRHI";
	KRHI.associatedCity = @"RHINELANDER";
	KRHI.associatedState = @"WI";
	KRHI.latitude = 45.6311;
	KRHI.longitude = 89.4672;
	[stationList addObject:KRHI];

	VXReportingStation *KRHP = [VXReportingStation new];
	KRHP.stationIdentifier = @"KRHP";
	KRHP.associatedCity = @"ANDREWS";
	KRHP.associatedState = @"NC";
	KRHP.latitude = 35.195;
	KRHP.longitude = 83.8636;
	[stationList addObject:KRHP];

	VXReportingStation *KRHV = [VXReportingStation new];
	KRHV.stationIdentifier = @"KRHV";
	KRHV.associatedCity = @"SAN JOSE";
	KRHV.associatedState = @"CA";
	KRHV.latitude = 37.3328;
	KRHV.longitude = 121.82;
	[stationList addObject:KRHV];

	VXReportingStation *KRIC = [VXReportingStation new];
	KRIC.stationIdentifier = @"KRIC";
	KRIC.associatedCity = @"RICHMOND";
	KRIC.associatedState = @"VA";
	KRIC.latitude = 37.505;
	KRIC.longitude = 77.3194;
	[stationList addObject:KRIC];

	VXReportingStation *KRIL = [VXReportingStation new];
	KRIL.stationIdentifier = @"KRIL";
	KRIL.associatedCity = @"RIFLE";
	KRIL.associatedState = @"CO";
	KRIL.latitude = 39.5261;
	KRIL.longitude = 107.727;
	[stationList addObject:KRIL];

	VXReportingStation *KRIV = [VXReportingStation new];
	KRIV.stationIdentifier = @"KRIV";
	KRIV.associatedCity = @"RIVERSIDE";
	KRIV.associatedState = @"CA";
	KRIV.latitude = 33.8803;
	KRIV.longitude = 117.259;
	[stationList addObject:KRIV];

	VXReportingStation *KRIW = [VXReportingStation new];
	KRIW.stationIdentifier = @"KRIW";
	KRIW.associatedCity = @"RIVERTON";
	KRIW.associatedState = @"WY";
	KRIW.latitude = 43.0642;
	KRIW.longitude = 108.46;
	[stationList addObject:KRIW];

	VXReportingStation *KRKD = [VXReportingStation new];
	KRKD.stationIdentifier = @"KRKD";
	KRKD.associatedCity = @"ROCKLAND";
	KRKD.associatedState = @"ME";
	KRKD.latitude = 44.06;
	KRKD.longitude = 69.0992;
	[stationList addObject:KRKD];

	VXReportingStation *KRKP = [VXReportingStation new];
	KRKP.stationIdentifier = @"KRKP";
	KRKP.associatedCity = @"ROCKPORT";
	KRKP.associatedState = @"TX";
	KRKP.latitude = 28.0867;
	KRKP.longitude = 97.0444;
	[stationList addObject:KRKP];

	VXReportingStation *KRKR = [VXReportingStation new];
	KRKR.stationIdentifier = @"KRKR";
	KRKR.associatedCity = @"POTEAU";
	KRKR.associatedState = @"OK";
	KRKR.latitude = 35.0214;
	KRKR.longitude = 94.6211;
	[stationList addObject:KRKR];

	VXReportingStation *KRKS = [VXReportingStation new];
	KRKS.stationIdentifier = @"KRKS";
	KRKS.associatedCity = @"ROCK SPRINGS";
	KRKS.associatedState = @"WY";
	KRKS.latitude = 41.5942;
	KRKS.longitude = 109.065;
	[stationList addObject:KRKS];

	VXReportingStation *KRME = [VXReportingStation new];
	KRME.stationIdentifier = @"KRME";
	KRME.associatedCity = @"ROME";
	KRME.associatedState = @"NY";
	KRME.latitude = 43.2336;
	KRME.longitude = 75.4069;
	[stationList addObject:KRME];

	VXReportingStation *KRMG = [VXReportingStation new];
	KRMG.stationIdentifier = @"KRMG";
	KRMG.associatedCity = @"ROME";
	KRMG.associatedState = @"GA";
	KRMG.latitude = 34.3506;
	KRMG.longitude = 85.1578;
	[stationList addObject:KRMG];

	VXReportingStation *KRMN = [VXReportingStation new];
	KRMN.stationIdentifier = @"KRMN";
	KRMN.associatedCity = @"STAFFORD";
	KRMN.associatedState = @"VA";
	KRMN.latitude = 38.3981;
	KRMN.longitude = 77.4553;
	[stationList addObject:KRMN];

	VXReportingStation *KRMY = [VXReportingStation new];
	KRMY.stationIdentifier = @"KRMY";
	KRMY.associatedCity = @"MARSHALL";
	KRMY.associatedState = @"MI";
	KRMY.latitude = 42.2511;
	KRMY.longitude = 84.9553;
	[stationList addObject:KRMY];

	VXReportingStation *KRNC = [VXReportingStation new];
	KRNC.stationIdentifier = @"KRNC";
	KRNC.associatedCity = @"MC MINNVILLE";
	KRNC.associatedState = @"TN";
	KRNC.latitude = 35.6981;
	KRNC.longitude = 85.8472;
	[stationList addObject:KRNC];

	VXReportingStation *KRND = [VXReportingStation new];
	KRND.stationIdentifier = @"KRND";
	KRND.associatedCity = @"UNIVERSAL CITY";
	KRND.associatedState = @"TX";
	KRND.latitude = 29.5294;
	KRND.longitude = 98.2786;
	[stationList addObject:KRND];

	VXReportingStation *KRNH = [VXReportingStation new];
	KRNH.stationIdentifier = @"KRNH";
	KRNH.associatedCity = @"NEW RICHMOND";
	KRNH.associatedState = @"WI";
	KRNH.latitude = 45.1481;
	KRNH.longitude = 92.5381;
	[stationList addObject:KRNH];

	VXReportingStation *KRNM = [VXReportingStation new];
	KRNM.stationIdentifier = @"KRNM";
	KRNM.associatedCity = @"RAMONA";
	KRNM.associatedState = @"CA";
	KRNM.latitude = 33.0389;
	KRNM.longitude = 116.915;
	[stationList addObject:KRNM];

	VXReportingStation *KRNO = [VXReportingStation new];
	KRNO.stationIdentifier = @"KRNO";
	KRNO.associatedCity = @"RENO";
	KRNO.associatedState = @"NV";
	KRNO.latitude = 39.4989;
	KRNO.longitude = 119.768;
	[stationList addObject:KRNO];

	VXReportingStation *KRNP = [VXReportingStation new];
	KRNP.stationIdentifier = @"KRNP";
	KRNP.associatedCity = @"OWOSSO";
	KRNP.associatedState = @"MI";
	KRNP.latitude = 42.9928;
	KRNP.longitude = 84.1389;
	[stationList addObject:KRNP];

	VXReportingStation *KRNT = [VXReportingStation new];
	KRNT.stationIdentifier = @"KRNT";
	KRNT.associatedCity = @"RENTON";
	KRNT.associatedState = @"WA";
	KRNT.latitude = 47.4931;
	KRNT.longitude = 122.216;
	[stationList addObject:KRNT];

	VXReportingStation *KRNV = [VXReportingStation new];
	KRNV.stationIdentifier = @"KRNV";
	KRNV.associatedCity = @"CLEVELAND";
	KRNV.associatedState = @"MS";
	KRNV.latitude = 33.7611;
	KRNV.longitude = 90.7578;
	[stationList addObject:KRNV];

	VXReportingStation *KROA = [VXReportingStation new];
	KROA.stationIdentifier = @"KROA";
	KROA.associatedCity = @"ROANOKE";
	KROA.associatedState = @"VA";
	KROA.latitude = 37.3253;
	KROA.longitude = 79.9753;
	[stationList addObject:KROA];

	VXReportingStation *KROC = [VXReportingStation new];
	KROC.stationIdentifier = @"KROC";
	KROC.associatedCity = @"ROCHESTER";
	KROC.associatedState = @"NY";
	KROC.latitude = 43.1186;
	KROC.longitude = 77.6722;
	[stationList addObject:KROC];

	VXReportingStation *KROG = [VXReportingStation new];
	KROG.stationIdentifier = @"KROG";
	KROG.associatedCity = @"ROGERS";
	KROG.associatedState = @"AR";
	KROG.latitude = 36.3722;
	KROG.longitude = 94.1067;
	[stationList addObject:KROG];

	VXReportingStation *KROS = [VXReportingStation new];
	KROS.stationIdentifier = @"KROS";
	KROS.associatedCity = @"RUSH CITY";
	KROS.associatedState = @"MN";
	KROS.latitude = 45.6978;
	KROS.longitude = 92.9528;
	[stationList addObject:KROS];

	VXReportingStation *KROW = [VXReportingStation new];
	KROW.stationIdentifier = @"KROW";
	KROW.associatedCity = @"ROSWELL";
	KROW.associatedState = @"NM";
	KROW.latitude = 33.3014;
	KROW.longitude = 104.531;
	[stationList addObject:KROW];

	VXReportingStation *KROX = [VXReportingStation new];
	KROX.stationIdentifier = @"KROX";
	KROX.associatedCity = @"ROSEAU";
	KROX.associatedState = @"MN";
	KROX.latitude = 48.8558;
	KROX.longitude = 95.6969;
	[stationList addObject:KROX];

	VXReportingStation *KRPD = [VXReportingStation new];
	KRPD.stationIdentifier = @"KRPD";
	KRPD.associatedCity = @"RICE LAKE";
	KRPD.associatedState = @"WI";
	KRPD.latitude = 45.4189;
	KRPD.longitude = 91.7733;
	[stationList addObject:KRPD];

	VXReportingStation *KRPE = [VXReportingStation new];
	KRPE.stationIdentifier = @"KRPE";
	KRPE.associatedCity = @"SABINE PASS";
	KRPE.associatedState = @"TX";
	KRPE.latitude = 29.7008;
	KRPE.longitude = 93.9439;
	[stationList addObject:KRPE];

	VXReportingStation *KRPH = [VXReportingStation new];
	KRPH.stationIdentifier = @"KRPH";
	KRPH.associatedCity = @"GRAHAM";
	KRPH.associatedState = @"TX";
	KRPH.latitude = 33.11;
	KRPH.longitude = 98.5553;
	[stationList addObject:KRPH];

	VXReportingStation *KRPJ = [VXReportingStation new];
	KRPJ.stationIdentifier = @"KRPJ";
	KRPJ.associatedCity = @"ROCHELLE";
	KRPJ.associatedState = @"IL";
	KRPJ.latitude = 41.8928;
	KRPJ.longitude = 89.0781;
	[stationList addObject:KRPJ];

	VXReportingStation *KRQB = [VXReportingStation new];
	KRQB.stationIdentifier = @"KRQB";
	KRQB.associatedCity = @"BIG RAPIDS";
	KRQB.associatedState = @"MI";
	KRQB.latitude = 43.7264;
	KRQB.longitude = 85.5072;
	[stationList addObject:KRQB];

	VXReportingStation *KRQE = [VXReportingStation new];
	KRQE.stationIdentifier = @"KRQE";
	KRQE.associatedCity = @"WINDOW ROCK";
	KRQE.associatedState = @"AZ";
	KRQE.latitude = 35.6519;
	KRQE.longitude = 109.067;
	[stationList addObject:KRQE];

	VXReportingStation *KRQO = [VXReportingStation new];
	KRQO.stationIdentifier = @"KRQO";
	KRQO.associatedCity = @"EL RENO";
	KRQO.associatedState = @"OK";
	KRQO.latitude = 35.4739;
	KRQO.longitude = 98.0056;
	[stationList addObject:KRQO];

	VXReportingStation *KRRT = [VXReportingStation new];
	KRRT.stationIdentifier = @"KRRT";
	KRRT.associatedCity = @"WARROAD";
	KRRT.associatedState = @"MN";
	KRRT.latitude = 48.9414;
	KRRT.longitude = 95.3483;
	[stationList addObject:KRRT];

	VXReportingStation *KRSL = [VXReportingStation new];
	KRSL.stationIdentifier = @"KRSL";
	KRSL.associatedCity = @"RUSSELL";
	KRSL.associatedState = @"KS";
	KRSL.latitude = 38.8719;
	KRSL.longitude = 98.8117;
	[stationList addObject:KRSL];

	VXReportingStation *KRSN = [VXReportingStation new];
	KRSN.stationIdentifier = @"KRSN";
	KRSN.associatedCity = @"RUSTON";
	KRSN.associatedState = @"LA";
	KRSN.latitude = 32.5144;
	KRSN.longitude = 92.5883;
	[stationList addObject:KRSN];

	VXReportingStation *KRST = [VXReportingStation new];
	KRST.stationIdentifier = @"KRST";
	KRST.associatedCity = @"ROCHESTER";
	KRST.associatedState = @"MN";
	KRST.latitude = 43.9069;
	KRST.longitude = 92.4989;
	[stationList addObject:KRST];

	VXReportingStation *KRSV = [VXReportingStation new];
	KRSV.stationIdentifier = @"KRSV";
	KRSV.associatedCity = @"ROBINSON";
	KRSV.associatedState = @"IL";
	KRSV.latitude = 39.0158;
	KRSV.longitude = 87.6497;
	[stationList addObject:KRSV];

	VXReportingStation *KRSW = [VXReportingStation new];
	KRSW.stationIdentifier = @"KRSW";
	KRSW.associatedCity = @"FORT MYERS";
	KRSW.associatedState = @"FL";
	KRSW.latitude = 26.5361;
	KRSW.longitude = 81.755;
	[stationList addObject:KRSW];

	VXReportingStation *KRTN = [VXReportingStation new];
	KRTN.stationIdentifier = @"KRTN";
	KRTN.associatedCity = @"RATON";
	KRTN.associatedState = @"NM";
	KRTN.latitude = 36.7414;
	KRTN.longitude = 104.502;
	[stationList addObject:KRTN];

	VXReportingStation *KRTS = [VXReportingStation new];
	KRTS.stationIdentifier = @"KRTS";
	KRTS.associatedCity = @"RENO";
	KRTS.associatedState = @"NV";
	KRTS.latitude = 39.6681;
	KRTS.longitude = 119.876;
	[stationList addObject:KRTS];

	VXReportingStation *KRUE = [VXReportingStation new];
	KRUE.stationIdentifier = @"KRUE";
	KRUE.associatedCity = @"RUSSELLVILLE";
	KRUE.associatedState = @"AR";
	KRUE.latitude = 35.2589;
	KRUE.longitude = 93.0931;
	[stationList addObject:KRUE];

	VXReportingStation *KRUQ = [VXReportingStation new];
	KRUQ.stationIdentifier = @"KRUQ";
	KRUQ.associatedCity = @"SALISBURY";
	KRUQ.associatedState = @"NC";
	KRUQ.latitude = 35.6458;
	KRUQ.longitude = 80.5203;
	[stationList addObject:KRUQ];

	VXReportingStation *KRUT = [VXReportingStation new];
	KRUT.stationIdentifier = @"KRUT";
	KRUT.associatedCity = @"RUTLAND";
	KRUT.associatedState = @"VT";
	KRUT.latitude = 43.5297;
	KRUT.longitude = 72.9494;
	[stationList addObject:KRUT];

	VXReportingStation *KRVS = [VXReportingStation new];
	KRVS.stationIdentifier = @"KRVS";
	KRVS.associatedCity = @"TULSA";
	KRVS.associatedState = @"OK";
	KRVS.latitude = 36.0394;
	KRVS.longitude = 95.9844;
	[stationList addObject:KRVS];

	VXReportingStation *KRWF = [VXReportingStation new];
	KRWF.stationIdentifier = @"KRWF";
	KRWF.associatedCity = @"REDWOOD FALLS";
	KRWF.associatedState = @"MN";
	KRWF.latitude = 44.5469;
	KRWF.longitude = 95.0822;
	[stationList addObject:KRWF];

	VXReportingStation *KRWI = [VXReportingStation new];
	KRWI.stationIdentifier = @"KRWI";
	KRWI.associatedCity = @"ROCKY MOUNT";
	KRWI.associatedState = @"NC";
	KRWI.latitude = 35.8561;
	KRWI.longitude = 77.8917;
	[stationList addObject:KRWI];

	VXReportingStation *KRWL = [VXReportingStation new];
	KRWL.stationIdentifier = @"KRWL";
	KRWL.associatedCity = @"RAWLINS";
	KRWL.associatedState = @"WY";
	KRWL.latitude = 41.8056;
	KRWL.longitude = 107.2;
	[stationList addObject:KRWL];

	VXReportingStation *KRWV = [VXReportingStation new];
	KRWV.stationIdentifier = @"KRWV";
	KRWV.associatedCity = @"CALDWELL";
	KRWV.associatedState = @"TX";
	KRWV.latitude = 30.5153;
	KRWV.longitude = 96.7039;
	[stationList addObject:KRWV];

	VXReportingStation *KRXE = [VXReportingStation new];
	KRXE.stationIdentifier = @"KRXE";
	KRXE.associatedCity = @"REXBURG";
	KRXE.associatedState = @"ID";
	KRXE.latitude = 43.8322;
	KRXE.longitude = 111.807;
	[stationList addObject:KRXE];

	VXReportingStation *KRYV = [VXReportingStation new];
	KRYV.stationIdentifier = @"KRYV";
	KRYV.associatedCity = @"WATERTOWN";
	KRYV.associatedState = @"WI";
	KRYV.latitude = 43.1694;
	KRYV.longitude = 88.7231;
	[stationList addObject:KRYV];

	VXReportingStation *KRYW = [VXReportingStation new];
	KRYW.stationIdentifier = @"KRYW";
	KRYW.associatedCity = @"LAGO VISTA";
	KRYW.associatedState = @"TX";
	KRYW.latitude = 30.4956;
	KRYW.longitude = 97.9664;
	[stationList addObject:KRYW];

	VXReportingStation *KRYY = [VXReportingStation new];
	KRYY.stationIdentifier = @"KRYY";
	KRYY.associatedCity = @"ATLANTA";
	KRYY.associatedState = @"GA";
	KRYY.latitude = 34.0131;
	KRYY.longitude = 84.5983;
	[stationList addObject:KRYY];

	VXReportingStation *KRZL = [VXReportingStation new];
	KRZL.stationIdentifier = @"KRZL";
	KRZL.associatedCity = @"RENSSELAER";
	KRZL.associatedState = @"IN";
	KRZL.latitude = 40.9478;
	KRZL.longitude = 87.1825;
	[stationList addObject:KRZL];

	VXReportingStation *KRZR = [VXReportingStation new];
	KRZR.stationIdentifier = @"KRZR";
	KRZR.associatedCity = @"CLEVELAND";
	KRZR.associatedState = @"TN";
	KRZR.latitude = 35.2069;
	KRZR.longitude = 84.8003;
	[stationList addObject:KRZR];

	VXReportingStation *KRZT = [VXReportingStation new];
	KRZT.stationIdentifier = @"KRZT";
	KRZT.associatedCity = @"CHILLICOTHE";
	KRZT.associatedState = @"OH";
	KRZT.latitude = 39.4403;
	KRZT.longitude = 83.0231;
	[stationList addObject:KRZT];

	VXReportingStation *KS14 = [VXReportingStation new];
	KS14.stationIdentifier = @"KS14";
	KS14.associatedCity = @"SPENCER";
	KS14.associatedState = @"ID";
	KS14.latitude = 44.35;
	KS14.longitude = 112.183;
	[stationList addObject:KS14];

	VXReportingStation *KS39 = [VXReportingStation new];
	KS39.stationIdentifier = @"KS39";
	KS39.associatedCity = @"PRINEVILLE";
	KS39.associatedState = @"OR";
	KS39.latitude = 44.2856;
	KS39.longitude = 120.901;
	[stationList addObject:KS39];

	VXReportingStation *KS58 = [VXReportingStation new];
	KS58.stationIdentifier = @"KS58";
	KS58.associatedCity = @"SOUTH TIMBALIER 300";
	KS58.associatedState = @"OG";
	KS58.latitude = 28.1614;
	KS58.longitude = 90.7161;
	[stationList addObject:KS58];

	VXReportingStation *KSAA = [VXReportingStation new];
	KSAA.stationIdentifier = @"KSAA";
	KSAA.associatedCity = @"SARATOGA";
	KSAA.associatedState = @"WY";
	KSAA.latitude = 41.4386;
	KSAA.longitude = 106.846;
	[stationList addObject:KSAA];

	VXReportingStation *KSAC = [VXReportingStation new];
	KSAC.stationIdentifier = @"KSAC";
	KSAC.associatedCity = @"SACRAMENTO";
	KSAC.associatedState = @"CA";
	KSAC.latitude = 38.5125;
	KSAC.longitude = 121.493;
	[stationList addObject:KSAC];

	VXReportingStation *KSAD = [VXReportingStation new];
	KSAD.stationIdentifier = @"KSAD";
	KSAD.associatedCity = @"SAFFORD";
	KSAD.associatedState = @"AZ";
	KSAD.latitude = 32.8531;
	KSAD.longitude = 109.635;
	[stationList addObject:KSAD];

	VXReportingStation *KSAF = [VXReportingStation new];
	KSAF.stationIdentifier = @"KSAF";
	KSAF.associatedCity = @"SANTA FE";
	KSAF.associatedState = @"NM";
	KSAF.latitude = 35.6169;
	KSAF.longitude = 106.089;
	[stationList addObject:KSAF];

	VXReportingStation *KSAN = [VXReportingStation new];
	KSAN.stationIdentifier = @"KSAN";
	KSAN.associatedCity = @"SAN DIEGO";
	KSAN.associatedState = @"CA";
	KSAN.latitude = 32.7333;
	KSAN.longitude = 117.189;
	[stationList addObject:KSAN];

	VXReportingStation *KSAR = [VXReportingStation new];
	KSAR.stationIdentifier = @"KSAR";
	KSAR.associatedCity = @"SPARTA";
	KSAR.associatedState = @"IL";
	KSAR.latitude = 38.1489;
	KSAR.longitude = 89.6986;
	[stationList addObject:KSAR];

	VXReportingStation *KSAT = [VXReportingStation new];
	KSAT.stationIdentifier = @"KSAT";
	KSAT.associatedCity = @"SAN ANTONIO";
	KSAT.associatedState = @"TX";
	KSAT.latitude = 29.5336;
	KSAT.longitude = 98.4697;
	[stationList addObject:KSAT];

	VXReportingStation *KSAV = [VXReportingStation new];
	KSAV.stationIdentifier = @"KSAV";
	KSAV.associatedCity = @"SAVANNAH";
	KSAV.associatedState = @"GA";
	KSAV.latitude = 32.1275;
	KSAV.longitude = 81.2019;
	[stationList addObject:KSAV];

	VXReportingStation *KSAW = [VXReportingStation new];
	KSAW.stationIdentifier = @"KSAW";
	KSAW.associatedCity = @"MARQUETTE";
	KSAW.associatedState = @"MI";
	KSAW.latitude = 46.3536;
	KSAW.longitude = 87.3953;
	[stationList addObject:KSAW];

	VXReportingStation *KSAZ = [VXReportingStation new];
	KSAZ.stationIdentifier = @"KSAZ";
	KSAZ.associatedCity = @"STAPLES";
	KSAZ.associatedState = @"MN";
	KSAZ.latitude = 46.3808;
	KSAZ.longitude = 94.8064;
	[stationList addObject:KSAZ];

	VXReportingStation *KSBA = [VXReportingStation new];
	KSBA.stationIdentifier = @"KSBA";
	KSBA.associatedCity = @"SANTA BARBARA";
	KSBA.associatedState = @"CA";
	KSBA.latitude = 34.4261;
	KSBA.longitude = 119.84;
	[stationList addObject:KSBA];

	VXReportingStation *KSBD = [VXReportingStation new];
	KSBD.stationIdentifier = @"KSBD";
	KSBD.associatedCity = @"SAN BERNARDINO";
	KSBD.associatedState = @"CA";
	KSBD.latitude = 34.0953;
	KSBD.longitude = 117.235;
	[stationList addObject:KSBD];

	VXReportingStation *KSBM = [VXReportingStation new];
	KSBM.stationIdentifier = @"KSBM";
	KSBM.associatedCity = @"SHEBOYGAN";
	KSBM.associatedState = @"WI";
	KSBM.latitude = 43.7694;
	KSBM.longitude = 87.8517;
	[stationList addObject:KSBM];

	VXReportingStation *KSBN = [VXReportingStation new];
	KSBN.stationIdentifier = @"KSBN";
	KSBN.associatedCity = @"SOUTH BEND";
	KSBN.associatedState = @"IN";
	KSBN.latitude = 41.7086;
	KSBN.longitude = 86.3172;
	[stationList addObject:KSBN];

	VXReportingStation *KSBO = [VXReportingStation new];
	KSBO.stationIdentifier = @"KSBO";
	KSBO.associatedCity = @"SWAINSBORO";
	KSBO.associatedState = @"GA";
	KSBO.latitude = 32.6133;
	KSBO.longitude = 82.3747;
	[stationList addObject:KSBO];

	VXReportingStation *KSBP = [VXReportingStation new];
	KSBP.stationIdentifier = @"KSBP";
	KSBP.associatedCity = @"SAN LUIS OBISPO";
	KSBP.associatedState = @"CA";
	KSBP.latitude = 35.2381;
	KSBP.longitude = 120.644;
	[stationList addObject:KSBP];

	VXReportingStation *KSBS = [VXReportingStation new];
	KSBS.stationIdentifier = @"KSBS";
	KSBS.associatedCity = @"STEAMBOAT SPRINGS";
	KSBS.associatedState = @"CO";
	KSBS.latitude = 40.5161;
	KSBS.longitude = 106.866;
	[stationList addObject:KSBS];

	VXReportingStation *KSBY = [VXReportingStation new];
	KSBY.stationIdentifier = @"KSBY";
	KSBY.associatedCity = @"SALISBURY";
	KSBY.associatedState = @"MD";
	KSBY.latitude = 38.3403;
	KSBY.longitude = 75.5103;
	[stationList addObject:KSBY];

	VXReportingStation *KSCD = [VXReportingStation new];
	KSCD.stationIdentifier = @"KSCD";
	KSCD.associatedCity = @"SYLACAUGA";
	KSCD.associatedState = @"AL";
	KSCD.latitude = 33.1731;
	KSCD.longitude = 86.2931;
	[stationList addObject:KSCD];

	VXReportingStation *KSCF = [VXReportingStation new];
	KSCF.stationIdentifier = @"KSCF";
	KSCF.associatedCity = @"SOUTH MARSH 268";
	KSCF.associatedState = @"LA";
	KSCF.latitude = 29.1158;
	KSCF.longitude = 91.8711;
	[stationList addObject:KSCF];

	VXReportingStation *KSCH = [VXReportingStation new];
	KSCH.stationIdentifier = @"KSCH";
	KSCH.associatedCity = @"SCHENECTADY";
	KSCH.associatedState = @"NY";
	KSCH.latitude = 42.8522;
	KSCH.longitude = 73.9286;
	[stationList addObject:KSCH];

	VXReportingStation *KSCK = [VXReportingStation new];
	KSCK.stationIdentifier = @"KSCK";
	KSCK.associatedCity = @"STOCKTON";
	KSCK.associatedState = @"CA";
	KSCK.latitude = 37.8939;
	KSCK.longitude = 121.238;
	[stationList addObject:KSCK];

	VXReportingStation *KSCR = [VXReportingStation new];
	KSCR.stationIdentifier = @"KSCR";
	KSCR.associatedCity = @"SILER CITY";
	KSCR.associatedState = @"NC";
	KSCR.latitude = 35.7044;
	KSCR.longitude = 79.5039;
	[stationList addObject:KSCR];

	VXReportingStation *KSDA = [VXReportingStation new];
	KSDA.stationIdentifier = @"KSDA";
	KSDA.associatedCity = @"SHENANDOAH";
	KSDA.associatedState = @"IA";
	KSDA.latitude = 40.7514;
	KSDA.longitude = 95.4136;
	[stationList addObject:KSDA];

	VXReportingStation *KSDB = [VXReportingStation new];
	KSDB.stationIdentifier = @"KSDB";
	KSDB.associatedCity = @"SANDBERG";
	KSDB.associatedState = @"CA";
	KSDB.latitude = 34.75;
	KSDB.longitude = 118.717;
	[stationList addObject:KSDB];

	VXReportingStation *KSDC = [VXReportingStation new];
	KSDC.stationIdentifier = @"KSDC";
	KSDC.associatedCity = @"WILLIAMSON/SODUS";
	KSDC.associatedState = @"NY";
	KSDC.latitude = 43.2353;
	KSDC.longitude = 77.12;
	[stationList addObject:KSDC];

	VXReportingStation *KSDF = [VXReportingStation new];
	KSDF.stationIdentifier = @"KSDF";
	KSDF.associatedCity = @"LOUISVILLE";
	KSDF.associatedState = @"KY";
	KSDF.latitude = 38.1742;
	KSDF.longitude = 85.7358;
	[stationList addObject:KSDF];

	VXReportingStation *KSDL = [VXReportingStation new];
	KSDL.stationIdentifier = @"KSDL";
	KSDL.associatedCity = @"SCOTTSDALE";
	KSDL.associatedState = @"AZ";
	KSDL.latitude = 33.6228;
	KSDL.longitude = 111.91;
	[stationList addObject:KSDL];

	VXReportingStation *KSDM = [VXReportingStation new];
	KSDM.stationIdentifier = @"KSDM";
	KSDM.associatedCity = @"SAN DIEGO";
	KSDM.associatedState = @"CA";
	KSDM.latitude = 32.5722;
	KSDM.longitude = 116.98;
	[stationList addObject:KSDM];

	VXReportingStation *KSDY = [VXReportingStation new];
	KSDY.stationIdentifier = @"KSDY";
	KSDY.associatedCity = @"SIDNEY";
	KSDY.associatedState = @"MT";
	KSDY.latitude = 47.7067;
	KSDY.longitude = 104.193;
	[stationList addObject:KSDY];

	VXReportingStation *KSEA = [VXReportingStation new];
	KSEA.stationIdentifier = @"KSEA";
	KSEA.associatedCity = @"SEATTLE";
	KSEA.associatedState = @"WA";
	KSEA.latitude = 47.4489;
	KSEA.longitude = 122.309;
	[stationList addObject:KSEA];

	VXReportingStation *KSEE = [VXReportingStation new];
	KSEE.stationIdentifier = @"KSEE";
	KSEE.associatedCity = @"SAN DIEGO/EL CAJON";
	KSEE.associatedState = @"CA";
	KSEE.latitude = 32.8261;
	KSEE.longitude = 116.972;
	[stationList addObject:KSEE];

	VXReportingStation *KSEG = [VXReportingStation new];
	KSEG.stationIdentifier = @"KSEG";
	KSEG.associatedCity = @"SELINSGROVE";
	KSEG.associatedState = @"PA";
	KSEG.latitude = 40.8203;
	KSEG.longitude = 76.8636;
	[stationList addObject:KSEG];

	VXReportingStation *KSEM = [VXReportingStation new];
	KSEM.stationIdentifier = @"KSEM";
	KSEM.associatedCity = @"SELMA";
	KSEM.associatedState = @"AL";
	KSEM.latitude = 32.3364;
	KSEM.longitude = 86.9836;
	[stationList addObject:KSEM];

	VXReportingStation *KSEP = [VXReportingStation new];
	KSEP.stationIdentifier = @"KSEP";
	KSEP.associatedCity = @"STEPHENVILLE";
	KSEP.associatedState = @"TX";
	KSEP.latitude = 32.2153;
	KSEP.longitude = 98.1775;
	[stationList addObject:KSEP];

	VXReportingStation *KSET = [VXReportingStation new];
	KSET.stationIdentifier = @"KSET";
	KSET.associatedCity = @"ST CHARLES";
	KSET.associatedState = @"MO";
	KSET.latitude = 38.9294;
	KSET.longitude = 90.4297;
	[stationList addObject:KSET];

	VXReportingStation *KSEZ = [VXReportingStation new];
	KSEZ.stationIdentifier = @"KSEZ";
	KSEZ.associatedCity = @"SEDONA";
	KSEZ.associatedState = @"AZ";
	KSEZ.latitude = 34.8486;
	KSEZ.longitude = 111.788;
	[stationList addObject:KSEZ];

	VXReportingStation *KSFB = [VXReportingStation new];
	KSFB.stationIdentifier = @"KSFB";
	KSFB.associatedCity = @"ORLANDO";
	KSFB.associatedState = @"FL";
	KSFB.latitude = 28.7775;
	KSFB.longitude = 81.2372;
	[stationList addObject:KSFB];

	VXReportingStation *KSFF = [VXReportingStation new];
	KSFF.stationIdentifier = @"KSFF";
	KSFF.associatedCity = @"SPOKANE";
	KSFF.associatedState = @"WA";
	KSFF.latitude = 47.6828;
	KSFF.longitude = 117.322;
	[stationList addObject:KSFF];

	VXReportingStation *KSFM = [VXReportingStation new];
	KSFM.stationIdentifier = @"KSFM";
	KSFM.associatedCity = @"SANFORD";
	KSFM.associatedState = @"ME";
	KSFM.latitude = 43.3936;
	KSFM.longitude = 70.7078;
	[stationList addObject:KSFM];

	VXReportingStation *KSFO = [VXReportingStation new];
	KSFO.stationIdentifier = @"KSFO";
	KSFO.associatedCity = @"SAN FRANCISCO";
	KSFO.associatedState = @"CA";
	KSFO.latitude = 37.6189;
	KSFO.longitude = 122.375;
	[stationList addObject:KSFO];

	VXReportingStation *KSFQ = [VXReportingStation new];
	KSFQ.stationIdentifier = @"KSFQ";
	KSFQ.associatedCity = @"SUFFOLK";
	KSFQ.associatedState = @"VA";
	KSFQ.latitude = 36.6822;
	KSFQ.longitude = 76.6017;
	[stationList addObject:KSFQ];

	VXReportingStation *KSFY = [VXReportingStation new];
	KSFY.stationIdentifier = @"KSFY";
	KSFY.associatedCity = @"SAVANNA";
	KSFY.associatedState = @"IL";
	KSFY.latitude = 42.0458;
	KSFY.longitude = 90.1078;
	[stationList addObject:KSFY];

	VXReportingStation *KSFZ = [VXReportingStation new];
	KSFZ.stationIdentifier = @"KSFZ";
	KSFZ.associatedCity = @"PAWTUCKET";
	KSFZ.associatedState = @"RI";
	KSFZ.latitude = 41.9206;
	KSFZ.longitude = 71.4911;
	[stationList addObject:KSFZ];

	VXReportingStation *KSGF = [VXReportingStation new];
	KSGF.stationIdentifier = @"KSGF";
	KSGF.associatedCity = @"SPRINGFIELD";
	KSGF.associatedState = @"MO";
	KSGF.latitude = 37.2456;
	KSGF.longitude = 93.3886;
	[stationList addObject:KSGF];

	VXReportingStation *KSGH = [VXReportingStation new];
	KSGH.stationIdentifier = @"KSGH";
	KSGH.associatedCity = @"SPRINGFIELD";
	KSGH.associatedState = @"OH";
	KSGH.latitude = 39.8403;
	KSGH.longitude = 83.84;
	[stationList addObject:KSGH];

	VXReportingStation *KSGJ = [VXReportingStation new];
	KSGJ.stationIdentifier = @"KSGJ";
	KSGJ.associatedCity = @"ST AUGUSTINE";
	KSGJ.associatedState = @"FL";
	KSGJ.latitude = 29.9592;
	KSGJ.longitude = 81.3397;
	[stationList addObject:KSGJ];

	VXReportingStation *KSGR = [VXReportingStation new];
	KSGR.stationIdentifier = @"KSGR";
	KSGR.associatedCity = @"HOUSTON";
	KSGR.associatedState = @"TX";
	KSGR.latitude = 29.6222;
	KSGR.longitude = 95.6564;
	[stationList addObject:KSGR];

	VXReportingStation *KSGT = [VXReportingStation new];
	KSGT.stationIdentifier = @"KSGT";
	KSGT.associatedCity = @"STUTTGART";
	KSGT.associatedState = @"AR";
	KSGT.latitude = 34.5994;
	KSGT.longitude = 91.5747;
	[stationList addObject:KSGT];

	VXReportingStation *KSGU = [VXReportingStation new];
	KSGU.stationIdentifier = @"KSGU";
	KSGU.associatedCity = @"ST GEORGE";
	KSGU.associatedState = @"UT";
	KSGU.latitude = 37.0442;
	KSGU.longitude = 113.503;
	[stationList addObject:KSGU];

	VXReportingStation *KSHD = [VXReportingStation new];
	KSHD.stationIdentifier = @"KSHD";
	KSHD.associatedCity = @"STAUNTON/WAYNESBORO/HARRIS";
	KSHD.associatedState = @"VA";
	KSHD.latitude = 38.2636;
	KSHD.longitude = 78.8964;
	[stationList addObject:KSHD];

	VXReportingStation *KSHL = [VXReportingStation new];
	KSHL.stationIdentifier = @"KSHL";
	KSHL.associatedCity = @"SHELDON";
	KSHL.associatedState = @"IA";
	KSHL.latitude = 43.2083;
	KSHL.longitude = 95.8333;
	[stationList addObject:KSHL];

	VXReportingStation *KSHM = [VXReportingStation new];
	KSHM.stationIdentifier = @"KSHM";
	KSHM.associatedCity = @"COLORADO SPRINGS";
	KSHM.associatedState = @"CO";
	KSHM.latitude = 38.7911;
	KSHM.longitude = 104.522;
	[stationList addObject:KSHM];

	VXReportingStation *KSHN = [VXReportingStation new];
	KSHN.stationIdentifier = @"KSHN";
	KSHN.associatedCity = @"SHELTON";
	KSHN.associatedState = @"WA";
	KSHN.latitude = 47.2333;
	KSHN.longitude = 123.148;
	[stationList addObject:KSHN];

	VXReportingStation *KSHR = [VXReportingStation new];
	KSHR.stationIdentifier = @"KSHR";
	KSHR.associatedCity = @"SHERIDAN";
	KSHR.associatedState = @"WY";
	KSHR.latitude = 44.7692;
	KSHR.longitude = 106.98;
	[stationList addObject:KSHR];

	VXReportingStation *KSHV = [VXReportingStation new];
	KSHV.stationIdentifier = @"KSHV";
	KSHV.associatedCity = @"SHREVEPORT";
	KSHV.associatedState = @"LA";
	KSHV.latitude = 32.4464;
	KSHV.longitude = 93.8256;
	[stationList addObject:KSHV];

	VXReportingStation *KSIF = [VXReportingStation new];
	KSIF.stationIdentifier = @"KSIF";
	KSIF.associatedCity = @"REIDSVILLE";
	KSIF.associatedState = @"NC";
	KSIF.latitude = 36.4406;
	KSIF.longitude = 79.8544;
	[stationList addObject:KSIF];

	VXReportingStation *KSIY = [VXReportingStation new];
	KSIY.stationIdentifier = @"KSIY";
	KSIY.associatedCity = @"MONTAGUE";
	KSIY.associatedState = @"CA";
	KSIY.latitude = 41.7814;
	KSIY.longitude = 122.468;
	[stationList addObject:KSIY];

	VXReportingStation *KSJC = [VXReportingStation new];
	KSJC.stationIdentifier = @"KSJC";
	KSJC.associatedCity = @"SAN JOSE";
	KSJC.associatedState = @"CA";
	KSJC.latitude = 37.3625;
	KSJC.longitude = 121.929;
	[stationList addObject:KSJC];

	VXReportingStation *KSJN = [VXReportingStation new];
	KSJN.stationIdentifier = @"KSJN";
	KSJN.associatedCity = @"ST JOHNS";
	KSJN.associatedState = @"AZ";
	KSJN.latitude = 34.5183;
	KSJN.longitude = 109.379;
	[stationList addObject:KSJN];

	VXReportingStation *KSJS = [VXReportingStation new];
	KSJS.stationIdentifier = @"KSJS";
	KSJS.associatedCity = @"PRESTONSBURG";
	KSJS.associatedState = @"KY";
	KSJS.latitude = 37.7508;
	KSJS.longitude = 82.6367;
	[stationList addObject:KSJS];

	VXReportingStation *KSJT = [VXReportingStation new];
	KSJT.stationIdentifier = @"KSJT";
	KSJT.associatedCity = @"SAN ANGELO";
	KSJT.associatedState = @"TX";
	KSJT.latitude = 31.3575;
	KSJT.longitude = 100.496;
	[stationList addObject:KSJT];

	VXReportingStation *KSJX = [VXReportingStation new];
	KSJX.stationIdentifier = @"KSJX";
	KSJX.associatedCity = @"BEAVER ISLAND";
	KSJX.associatedState = @"MI";
	KSJX.latitude = 45.6922;
	KSJX.longitude = 85.5664;
	[stationList addObject:KSJX];

	VXReportingStation *KSKA = [VXReportingStation new];
	KSKA.stationIdentifier = @"KSKA";
	KSKA.associatedCity = @"SPOKANE";
	KSKA.associatedState = @"WA";
	KSKA.latitude = 47.615;
	KSKA.longitude = 117.656;
	[stationList addObject:KSKA];

	VXReportingStation *KSKF = [VXReportingStation new];
	KSKF.stationIdentifier = @"KSKF";
	KSKF.associatedCity = @"SAN ANTONIO";
	KSKF.associatedState = @"TX";
	KSKF.latitude = 29.3842;
	KSKF.longitude = 98.5811;
	[stationList addObject:KSKF];

	VXReportingStation *KSKX = [VXReportingStation new];
	KSKX.stationIdentifier = @"KSKX";
	KSKX.associatedCity = @"TAOS";
	KSKX.associatedState = @"NM";
	KSKX.latitude = 36.4581;
	KSKX.longitude = 105.672;
	[stationList addObject:KSKX];

	VXReportingStation *KSLB = [VXReportingStation new];
	KSLB.stationIdentifier = @"KSLB";
	KSLB.associatedCity = @"STORM LAKE";
	KSLB.associatedState = @"IA";
	KSLB.latitude = 42.5972;
	KSLB.longitude = 95.2406;
	[stationList addObject:KSLB];

	VXReportingStation *KSLC = [VXReportingStation new];
	KSLC.stationIdentifier = @"KSLC";
	KSLC.associatedCity = @"SALT LAKE CITY";
	KSLC.associatedState = @"UT";
	KSLC.latitude = 40.7883;
	KSLC.longitude = 111.978;
	[stationList addObject:KSLC];

	VXReportingStation *KSLE = [VXReportingStation new];
	KSLE.stationIdentifier = @"KSLE";
	KSLE.associatedCity = @"SALEM";
	KSLE.associatedState = @"OR";
	KSLE.latitude = 44.9094;
	KSLE.longitude = 123.002;
	[stationList addObject:KSLE];

	VXReportingStation *KSLG = [VXReportingStation new];
	KSLG.stationIdentifier = @"KSLG";
	KSLG.associatedCity = @"SILOAM SPRINGS";
	KSLG.associatedState = @"AR";
	KSLG.latitude = 36.1917;
	KSLG.longitude = 94.4897;
	[stationList addObject:KSLG];

	VXReportingStation *KSLH = [VXReportingStation new];
	KSLH.stationIdentifier = @"KSLH";
	KSLH.associatedCity = @"CHEBOYGAN";
	KSLH.associatedState = @"MI";
	KSLH.latitude = 45.6536;
	KSLH.longitude = 84.5192;
	[stationList addObject:KSLH];

	VXReportingStation *KSLI = [VXReportingStation new];
	KSLI.stationIdentifier = @"KSLI";
	KSLI.associatedCity = @"LOS ALAMITOS";
	KSLI.associatedState = @"CA";
	KSLI.latitude = 33.79;
	KSLI.longitude = 118.052;
	[stationList addObject:KSLI];

	VXReportingStation *KSLK = [VXReportingStation new];
	KSLK.stationIdentifier = @"KSLK";
	KSLK.associatedCity = @"SARANAC LAKE";
	KSLK.associatedState = @"NY";
	KSLK.latitude = 44.3853;
	KSLK.longitude = 74.2061;
	[stationList addObject:KSLK];

	VXReportingStation *KSLN = [VXReportingStation new];
	KSLN.stationIdentifier = @"KSLN";
	KSLN.associatedCity = @"SALINA";
	KSLN.associatedState = @"KS";
	KSLN.latitude = 38.7908;
	KSLN.longitude = 97.6519;
	[stationList addObject:KSLN];

	VXReportingStation *KSLO = [VXReportingStation new];
	KSLO.stationIdentifier = @"KSLO";
	KSLO.associatedCity = @"SALEM";
	KSLO.associatedState = @"IL";
	KSLO.latitude = 38.6428;
	KSLO.longitude = 88.9642;
	[stationList addObject:KSLO];

	VXReportingStation *KSLR = [VXReportingStation new];
	KSLR.stationIdentifier = @"KSLR";
	KSLR.associatedCity = @"SULPHUR SPRINGS";
	KSLR.associatedState = @"TX";
	KSLR.latitude = 33.1597;
	KSLR.longitude = 95.6211;
	[stationList addObject:KSLR];

	VXReportingStation *KSME = [VXReportingStation new];
	KSME.stationIdentifier = @"KSME";
	KSME.associatedCity = @"SOMERSET";
	KSME.associatedState = @"KY";
	KSME.latitude = 37.0533;
	KSME.longitude = 84.6158;
	[stationList addObject:KSME];

	VXReportingStation *KSMF = [VXReportingStation new];
	KSMF.stationIdentifier = @"KSMF";
	KSMF.associatedCity = @"SACRAMENTO";
	KSMF.associatedState = @"CA";
	KSMF.latitude = 38.6953;
	KSMF.longitude = 121.591;
	[stationList addObject:KSMF];

	VXReportingStation *KSMN = [VXReportingStation new];
	KSMN.stationIdentifier = @"KSMN";
	KSMN.associatedCity = @"SALMON";
	KSMN.associatedState = @"ID";
	KSMN.latitude = 45.1236;
	KSMN.longitude = 113.881;
	[stationList addObject:KSMN];

	VXReportingStation *KSMO = [VXReportingStation new];
	KSMO.stationIdentifier = @"KSMO";
	KSMO.associatedCity = @"SANTA MONICA";
	KSMO.associatedState = @"CA";
	KSMO.latitude = 34.0156;
	KSMO.longitude = 118.451;
	[stationList addObject:KSMO];

	VXReportingStation *KSMP = [VXReportingStation new];
	KSMP.stationIdentifier = @"KSMP";
	KSMP.associatedCity = @"STAMPEDE PASS";
	KSMP.associatedState = @"WA";
	KSMP.latitude = 47.2831;
	KSMP.longitude = 121.334;
	[stationList addObject:KSMP];

	VXReportingStation *KSMQ = [VXReportingStation new];
	KSMQ.stationIdentifier = @"KSMQ";
	KSMQ.associatedCity = @"SOMERVILLE";
	KSMQ.associatedState = @"NJ";
	KSMQ.latitude = 40.6258;
	KSMQ.longitude = 74.67;
	[stationList addObject:KSMQ];

	VXReportingStation *KSMS = [VXReportingStation new];
	KSMS.stationIdentifier = @"KSMS";
	KSMS.associatedCity = @"SUMTER";
	KSMS.associatedState = @"SC";
	KSMS.latitude = 33.9956;
	KSMS.longitude = 80.3614;
	[stationList addObject:KSMS];

	VXReportingStation *KSMX = [VXReportingStation new];
	KSMX.stationIdentifier = @"KSMX";
	KSMX.associatedCity = @"SANTA MARIA";
	KSMX.associatedState = @"CA";
	KSMX.latitude = 34.8989;
	KSMX.longitude = 120.457;
	[stationList addObject:KSMX];

	VXReportingStation *KSNA = [VXReportingStation new];
	KSNA.stationIdentifier = @"KSNA";
	KSNA.associatedCity = @"SANTA ANA";
	KSNA.associatedState = @"CA";
	KSNA.latitude = 33.6756;
	KSNA.longitude = 117.868;
	[stationList addObject:KSNA];

	VXReportingStation *KSNC = [VXReportingStation new];
	KSNC.stationIdentifier = @"KSNC";
	KSNC.associatedCity = @"CHESTER";
	KSNC.associatedState = @"CT";
	KSNC.latitude = 41.3839;
	KSNC.longitude = 72.5058;
	[stationList addObject:KSNC];

	VXReportingStation *KSNH = [VXReportingStation new];
	KSNH.stationIdentifier = @"KSNH";
	KSNH.associatedCity = @"SAVANNAH";
	KSNH.associatedState = @"TN";
	KSNH.latitude = 35.1703;
	KSNH.longitude = 88.2158;
	[stationList addObject:KSNH];

	VXReportingStation *KSNK = [VXReportingStation new];
	KSNK.stationIdentifier = @"KSNK";
	KSNK.associatedCity = @"SNYDER";
	KSNK.associatedState = @"TX";
	KSNK.latitude = 32.6933;
	KSNK.longitude = 100.95;
	[stationList addObject:KSNK];

	VXReportingStation *KSNL = [VXReportingStation new];
	KSNL.stationIdentifier = @"KSNL";
	KSNL.associatedCity = @"SHAWNEE";
	KSNL.associatedState = @"OK";
	KSNL.latitude = 35.3578;
	KSNL.longitude = 96.9428;
	[stationList addObject:KSNL];

	VXReportingStation *KSNS = [VXReportingStation new];
	KSNS.stationIdentifier = @"KSNS";
	KSNS.associatedCity = @"SALINAS";
	KSNS.associatedState = @"CA";
	KSNS.latitude = 36.6628;
	KSNS.longitude = 121.606;
	[stationList addObject:KSNS];

	VXReportingStation *KSNY = [VXReportingStation new];
	KSNY.stationIdentifier = @"KSNY";
	KSNY.associatedCity = @"SIDNEY";
	KSNY.associatedState = @"NE";
	KSNY.latitude = 41.1011;
	KSNY.longitude = 102.985;
	[stationList addObject:KSNY];

	VXReportingStation *KSOA = [VXReportingStation new];
	KSOA.stationIdentifier = @"KSOA";
	KSOA.associatedCity = @"SONORA";
	KSOA.associatedState = @"TX";
	KSOA.latitude = 30.5856;
	KSOA.longitude = 100.648;
	[stationList addObject:KSOA];

	VXReportingStation *KSOP = [VXReportingStation new];
	KSOP.stationIdentifier = @"KSOP";
	KSOP.associatedCity = @"PINEHURST/SOUTHERN PINES";
	KSOP.associatedState = @"NC";
	KSOP.latitude = 35.2372;
	KSOP.longitude = 79.3911;
	[stationList addObject:KSOP];

	VXReportingStation *KSOW = [VXReportingStation new];
	KSOW.stationIdentifier = @"KSOW";
	KSOW.associatedCity = @"SHOW LOW";
	KSOW.associatedState = @"AZ";
	KSOW.latitude = 34.2653;
	KSOW.longitude = 110.006;
	[stationList addObject:KSOW];

	VXReportingStation *KSPA = [VXReportingStation new];
	KSPA.stationIdentifier = @"KSPA";
	KSPA.associatedCity = @"SPARTANBURG";
	KSPA.associatedState = @"SC";
	KSPA.latitude = 34.9156;
	KSPA.longitude = 81.9564;
	[stationList addObject:KSPA];

	VXReportingStation *KSPB = [VXReportingStation new];
	KSPB.stationIdentifier = @"KSPB";
	KSPB.associatedCity = @"SCAPPOOSE";
	KSPB.associatedState = @"OR";
	KSPB.latitude = 45.7725;
	KSPB.longitude = 122.862;
	[stationList addObject:KSPB];

	VXReportingStation *KSPF = [VXReportingStation new];
	KSPF.stationIdentifier = @"KSPF";
	KSPF.associatedCity = @"SPEARFISH";
	KSPF.associatedState = @"SD";
	KSPF.latitude = 44.4803;
	KSPF.longitude = 103.783;
	[stationList addObject:KSPF];

	VXReportingStation *KSPG = [VXReportingStation new];
	KSPG.stationIdentifier = @"KSPG";
	KSPG.associatedCity = @"ST PETERSBURG";
	KSPG.associatedState = @"FL";
	KSPG.latitude = 27.765;
	KSPG.longitude = 82.6269;
	[stationList addObject:KSPG];

	VXReportingStation *KSPI = [VXReportingStation new];
	KSPI.stationIdentifier = @"KSPI";
	KSPI.associatedCity = @"SPRINGFIELD";
	KSPI.associatedState = @"IL";
	KSPI.latitude = 39.8439;
	KSPI.longitude = 89.6778;
	[stationList addObject:KSPI];

	VXReportingStation *KSPL = [VXReportingStation new];
	KSPL.stationIdentifier = @"KSPL";
	KSPL.associatedCity = @"SOUTH PADRE ISLAND";
	KSPL.associatedState = @"TX";
	KSPL.latitude = 26.0708;
	KSPL.longitude = 97.1575;
	[stationList addObject:KSPL];

	VXReportingStation *KSPR = [VXReportingStation new];
	KSPR.stationIdentifier = @"KSPR";
	KSPR.associatedCity = @"SHIP SHOAL";
	KSPR.associatedState = @"LA";
	KSPR.latitude = 28.5989;
	KSPR.longitude = 91.2064;
	[stationList addObject:KSPR];

	VXReportingStation *KSPS = [VXReportingStation new];
	KSPS.stationIdentifier = @"KSPS";
	KSPS.associatedCity = @"WICHITA FALLS";
	KSPS.associatedState = @"TX";
	KSPS.latitude = 33.9886;
	KSPS.longitude = 98.4917;
	[stationList addObject:KSPS];

	VXReportingStation *KSPW = [VXReportingStation new];
	KSPW.stationIdentifier = @"KSPW";
	KSPW.associatedCity = @"SPENCER";
	KSPW.associatedState = @"IA";
	KSPW.latitude = 43.1653;
	KSPW.longitude = 95.2028;
	[stationList addObject:KSPW];

	VXReportingStation *KSQE = [VXReportingStation new];
	KSQE.stationIdentifier = @"KSQE";
	KSQE.associatedCity = @"GULF OF MEXICO";
	KSQE.associatedState = @"LA";
	KSQE.latitude = 28.0839;
	KSQE.longitude = 90.8189;
	[stationList addObject:KSQE];

	VXReportingStation *KSQI = [VXReportingStation new];
	KSQI.stationIdentifier = @"KSQI";
	KSQI.associatedCity = @"STERLING/ROCKFALLS";
	KSQI.associatedState = @"IL";
	KSQI.latitude = 41.7428;
	KSQI.longitude = 89.6761;
	[stationList addObject:KSQI];

	VXReportingStation *KSQL = [VXReportingStation new];
	KSQL.stationIdentifier = @"KSQL";
	KSQL.associatedCity = @"SAN CARLOS";
	KSQL.associatedState = @"CA";
	KSQL.latitude = 37.5117;
	KSQL.longitude = 122.249;
	[stationList addObject:KSQL];

	VXReportingStation *KSRB = [VXReportingStation new];
	KSRB.stationIdentifier = @"KSRB";
	KSRB.associatedCity = @"SPARTA";
	KSRB.associatedState = @"TN";
	KSRB.latitude = 36.0528;
	KSRB.longitude = 85.5358;
	[stationList addObject:KSRB];

	VXReportingStation *KSRE = [VXReportingStation new];
	KSRE.stationIdentifier = @"KSRE";
	KSRE.associatedCity = @"SEMINOLE";
	KSRE.associatedState = @"OK";
	KSRE.latitude = 35.2744;
	KSRE.longitude = 96.675;
	[stationList addObject:KSRE];

	VXReportingStation *KSRN = [VXReportingStation new];
	KSRN.stationIdentifier = @"KSRN";
	KSRN.associatedCity = @"SOUTH MARSH 268A";
	KSRN.associatedState = @"OG";
	KSRN.latitude = 29.1167;
	KSRN.longitude = 91.8667;
	[stationList addObject:KSRN];

	VXReportingStation *KSRQ = [VXReportingStation new];
	KSRQ.stationIdentifier = @"KSRQ";
	KSRQ.associatedCity = @"SARASOTA/BRADENTON";
	KSRQ.associatedState = @"FL";
	KSRQ.latitude = 27.3953;
	KSRQ.longitude = 82.5542;
	[stationList addObject:KSRQ];

	VXReportingStation *KSRR = [VXReportingStation new];
	KSRR.stationIdentifier = @"KSRR";
	KSRR.associatedCity = @"RUIDOSO";
	KSRR.associatedState = @"NM";
	KSRR.latitude = 33.4628;
	KSRR.longitude = 105.535;
	[stationList addObject:KSRR];

	VXReportingStation *KSSC = [VXReportingStation new];
	KSSC.stationIdentifier = @"KSSC";
	KSSC.associatedCity = @"SUMTER";
	KSSC.associatedState = @"SC";
	KSSC.latitude = 33.9728;
	KSSC.longitude = 80.4728;
	[stationList addObject:KSSC];

	VXReportingStation *KSSF = [VXReportingStation new];
	KSSF.stationIdentifier = @"KSSF";
	KSSF.associatedCity = @"SAN ANTONIO";
	KSSF.associatedState = @"TX";
	KSSF.latitude = 29.3369;
	KSSF.longitude = 98.4711;
	[stationList addObject:KSSF];

	VXReportingStation *KSSI = [VXReportingStation new];
	KSSI.stationIdentifier = @"KSSI";
	KSSI.associatedCity = @"BRUNSWICK";
	KSSI.associatedState = @"GA";
	KSSI.latitude = 31.1517;
	KSSI.longitude = 81.3939;
	[stationList addObject:KSSI];

	VXReportingStation *KSSM = [VXReportingStation new];
	KSSM.stationIdentifier = @"KSSM";
	KSSM.associatedCity = @"SAULT STE MARIE";
	KSSM.associatedState = @"MI";
	KSSM.latitude = 46.4119;
	KSSM.longitude = 84.3147;
	[stationList addObject:KSSM];

	VXReportingStation *KSTC = [VXReportingStation new];
	KSTC.stationIdentifier = @"KSTC";
	KSTC.associatedCity = @"ST CLOUD";
	KSTC.associatedState = @"MN";
	KSTC.latitude = 45.5464;
	KSTC.longitude = 94.0597;
	[stationList addObject:KSTC];

	VXReportingStation *KSTE = [VXReportingStation new];
	KSTE.stationIdentifier = @"KSTE";
	KSTE.associatedCity = @"STEVENS POINT";
	KSTE.associatedState = @"WI";
	KSTE.latitude = 44.545;
	KSTE.longitude = 89.5303;
	[stationList addObject:KSTE];

	VXReportingStation *KSTJ = [VXReportingStation new];
	KSTJ.stationIdentifier = @"KSTJ";
	KSTJ.associatedCity = @"ST JOSEPH";
	KSTJ.associatedState = @"MO";
	KSTJ.latitude = 39.7719;
	KSTJ.longitude = 94.9094;
	[stationList addObject:KSTJ];

	VXReportingStation *KSTL = [VXReportingStation new];
	KSTL.stationIdentifier = @"KSTL";
	KSTL.associatedCity = @"ST LOUIS";
	KSTL.associatedState = @"MO";
	KSTL.latitude = 38.7475;
	KSTL.longitude = 90.36;
	[stationList addObject:KSTL];

	VXReportingStation *KSTP = [VXReportingStation new];
	KSTP.stationIdentifier = @"KSTP";
	KSTP.associatedCity = @"ST PAUL";
	KSTP.associatedState = @"MN";
	KSTP.latitude = 44.9344;
	KSTP.longitude = 93.0597;
	[stationList addObject:KSTP];

	VXReportingStation *KSTS = [VXReportingStation new];
	KSTS.stationIdentifier = @"KSTS";
	KSTS.associatedCity = @"SANTA ROSA";
	KSTS.associatedState = @"CA";
	KSTS.latitude = 38.5089;
	KSTS.longitude = 122.813;
	[stationList addObject:KSTS];

	VXReportingStation *KSUA = [VXReportingStation new];
	KSUA.stationIdentifier = @"KSUA";
	KSUA.associatedCity = @"STUART";
	KSUA.associatedState = @"FL";
	KSUA.latitude = 27.1817;
	KSUA.longitude = 80.2208;
	[stationList addObject:KSUA];

	VXReportingStation *KSUE = [VXReportingStation new];
	KSUE.stationIdentifier = @"KSUE";
	KSUE.associatedCity = @"STURGEON BAY";
	KSUE.associatedState = @"WI";
	KSUE.latitude = 44.8436;
	KSUE.longitude = 87.4214;
	[stationList addObject:KSUE];

	VXReportingStation *KSUN = [VXReportingStation new];
	KSUN.stationIdentifier = @"KSUN";
	KSUN.associatedCity = @"HAILEY";
	KSUN.associatedState = @"ID";
	KSUN.latitude = 43.5039;
	KSUN.longitude = 114.296;
	[stationList addObject:KSUN];

	VXReportingStation *KSUS = [VXReportingStation new];
	KSUS.stationIdentifier = @"KSUS";
	KSUS.associatedCity = @"ST LOUIS";
	KSUS.associatedState = @"MO";
	KSUS.latitude = 38.6619;
	KSUS.longitude = 90.6519;
	[stationList addObject:KSUS];

	VXReportingStation *KSUU = [VXReportingStation new];
	KSUU.stationIdentifier = @"KSUU";
	KSUU.associatedCity = @"FAIRFIELD";
	KSUU.associatedState = @"CA";
	KSUU.latitude = 38.2625;
	KSUU.longitude = 121.928;
	[stationList addObject:KSUU];

	VXReportingStation *KSUW = [VXReportingStation new];
	KSUW.stationIdentifier = @"KSUW";
	KSUW.associatedCity = @"SUPERIOR";
	KSUW.associatedState = @"WI";
	KSUW.latitude = 46.6894;
	KSUW.longitude = 92.0944;
	[stationList addObject:KSUW];

	VXReportingStation *KSUX = [VXReportingStation new];
	KSUX.stationIdentifier = @"KSUX";
	KSUX.associatedCity = @"SIOUX CITY";
	KSUX.associatedState = @"IA";
	KSUX.latitude = 42.4025;
	KSUX.longitude = 96.3842;
	[stationList addObject:KSUX];

	VXReportingStation *KSVC = [VXReportingStation new];
	KSVC.stationIdentifier = @"KSVC";
	KSVC.associatedCity = @"SILVER CITY";
	KSVC.associatedState = @"NM";
	KSVC.latitude = 32.6364;
	KSVC.longitude = 108.156;
	[stationList addObject:KSVC];

	VXReportingStation *KSVE = [VXReportingStation new];
	KSVE.stationIdentifier = @"KSVE";
	KSVE.associatedCity = @"SUSANVILLE";
	KSVE.associatedState = @"CA";
	KSVE.latitude = 40.3756;
	KSVE.longitude = 120.572;
	[stationList addObject:KSVE];

	VXReportingStation *KSVH = [VXReportingStation new];
	KSVH.stationIdentifier = @"KSVH";
	KSVH.associatedCity = @"STATESVILLE";
	KSVH.associatedState = @"NC";
	KSVH.latitude = 35.765;
	KSVH.longitude = 80.9567;
	[stationList addObject:KSVH];

	VXReportingStation *KSVN = [VXReportingStation new];
	KSVN.stationIdentifier = @"KSVN";
	KSVN.associatedCity = @"SAVANNAH";
	KSVN.associatedState = @"GA";
	KSVN.latitude = 32.01;
	KSVN.longitude = 81.1456;
	[stationList addObject:KSVN];

	VXReportingStation *KSWF = [VXReportingStation new];
	KSWF.stationIdentifier = @"KSWF";
	KSWF.associatedCity = @"NEWBURGH";
	KSWF.associatedState = @"NY";
	KSWF.latitude = 41.5039;
	KSWF.longitude = 74.1047;
	[stationList addObject:KSWF];

	VXReportingStation *KSWO = [VXReportingStation new];
	KSWO.stationIdentifier = @"KSWO";
	KSWO.associatedCity = @"STILLWATER";
	KSWO.associatedState = @"OK";
	KSWO.latitude = 36.16;
	KSWO.longitude = 97.0856;
	[stationList addObject:KSWO];

	VXReportingStation *KSWW = [VXReportingStation new];
	KSWW.stationIdentifier = @"KSWW";
	KSWW.associatedCity = @"SWEETWATER";
	KSWW.associatedState = @"TX";
	KSWW.latitude = 32.4672;
	KSWW.longitude = 100.466;
	[stationList addObject:KSWW];

	VXReportingStation *KSXT = [VXReportingStation new];
	KSXT.stationIdentifier = @"KSXT";
	KSXT.associatedCity = @"SEXTON SUMMIT";
	KSXT.associatedState = @"OR";
	KSXT.latitude = 42.6164;
	KSXT.longitude = 123.368;
	[stationList addObject:KSXT];

	VXReportingStation *KSYF = [VXReportingStation new];
	KSYF.stationIdentifier = @"KSYF";
	KSYF.associatedCity = @"ST FRANCIS";
	KSYF.associatedState = @"KS";
	KSYF.latitude = 39.7608;
	KSYF.longitude = 101.796;
	[stationList addObject:KSYF];

	VXReportingStation *KSYI = [VXReportingStation new];
	KSYI.stationIdentifier = @"KSYI";
	KSYI.associatedCity = @"SHELBYVILLE";
	KSYI.associatedState = @"TN";
	KSYI.latitude = 35.56;
	KSYI.longitude = 86.4422;
	[stationList addObject:KSYI];

	VXReportingStation *KSYM = [VXReportingStation new];
	KSYM.stationIdentifier = @"KSYM";
	KSYM.associatedCity = @"MOREHEAD";
	KSYM.associatedState = @"KY";
	KSYM.latitude = 38.2144;
	KSYM.longitude = 83.5856;
	[stationList addObject:KSYM];

	VXReportingStation *KSYN = [VXReportingStation new];
	KSYN.stationIdentifier = @"KSYN";
	KSYN.associatedCity = @"STANTON";
	KSYN.associatedState = @"MN";
	KSYN.latitude = 44.4753;
	KSYN.longitude = 93.0161;
	[stationList addObject:KSYN];

	VXReportingStation *KSYR = [VXReportingStation new];
	KSYR.stationIdentifier = @"KSYR";
	KSYR.associatedCity = @"SYRACUSE";
	KSYR.associatedState = @"NY";
	KSYR.latitude = 43.1111;
	KSYR.longitude = 76.1061;
	[stationList addObject:KSYR];

	VXReportingStation *KSZL = [VXReportingStation new];
	KSZL.stationIdentifier = @"KSZL";
	KSZL.associatedCity = @"KNOB NOSTER";
	KSZL.associatedState = @"MO";
	KSZL.latitude = 38.7303;
	KSZL.longitude = 93.5478;
	[stationList addObject:KSZL];

	VXReportingStation *KSZT = [VXReportingStation new];
	KSZT.stationIdentifier = @"KSZT";
	KSZT.associatedCity = @"SANDPOINT";
	KSZT.associatedState = @"ID";
	KSZT.latitude = 48.2994;
	KSZT.longitude = 116.56;
	[stationList addObject:KSZT];

	VXReportingStation *KT20 = [VXReportingStation new];
	KT20.stationIdentifier = @"KT20";
	KT20.associatedCity = @"GONZALES";
	KT20.associatedState = @"TX";
	KT20.latitude = 29.5289;
	KT20.longitude = 97.4642;
	[stationList addObject:KT20];

	VXReportingStation *KT35 = [VXReportingStation new];
	KT35.stationIdentifier = @"KT35";
	KT35.associatedCity = @"CAMERON";
	KT35.associatedState = @"TX";
	KT35.latitude = 30.8786;
	KT35.longitude = 96.9703;
	[stationList addObject:KT35];

	VXReportingStation *KT62 = [VXReportingStation new];
	KT62.stationIdentifier = @"KT62";
	KT62.associatedCity = @"TOOELE";
	KT62.associatedState = @"UT";
	KT62.latitude = 40.3214;
	KT62.longitude = 112.303;
	[stationList addObject:KT62];

	VXReportingStation *KT65 = [VXReportingStation new];
	KT65.stationIdentifier = @"KT65";
	KT65.associatedCity = @"WESLACO";
	KT65.associatedState = @"TX";
	KT65.latitude = 26.1775;
	KT65.longitude = 97.9731;
	[stationList addObject:KT65];

	VXReportingStation *KT82 = [VXReportingStation new];
	KT82.stationIdentifier = @"KT82";
	KT82.associatedCity = @"FREDERICKSBURG";
	KT82.associatedState = @"TX";
	KT82.latitude = 30.2431;
	KT82.longitude = 98.9092;
	[stationList addObject:KT82];

	VXReportingStation *KTAD = [VXReportingStation new];
	KTAD.stationIdentifier = @"KTAD";
	KTAD.associatedCity = @"TRINIDAD";
	KTAD.associatedState = @"CO";
	KTAD.latitude = 37.2592;
	KTAD.longitude = 104.341;
	[stationList addObject:KTAD];

	VXReportingStation *KTAN = [VXReportingStation new];
	KTAN.stationIdentifier = @"KTAN";
	KTAN.associatedCity = @"TAUNTON";
	KTAN.associatedState = @"MA";
	KTAN.latitude = 41.8742;
	KTAN.longitude = 71.0164;
	[stationList addObject:KTAN];

	VXReportingStation *KTAZ = [VXReportingStation new];
	KTAZ.stationIdentifier = @"KTAZ";
	KTAZ.associatedCity = @"TAYLORVILLE";
	KTAZ.associatedState = @"IL";
	KTAZ.latitude = 39.5342;
	KTAZ.longitude = 89.3278;
	[stationList addObject:KTAZ];

	VXReportingStation *KTBN = [VXReportingStation new];
	KTBN.stationIdentifier = @"KTBN";
	KTBN.associatedCity = @"FORT LEONARD WOOD";
	KTBN.associatedState = @"MO";
	KTBN.latitude = 37.7414;
	KTBN.longitude = 92.1406;
	[stationList addObject:KTBN];

	VXReportingStation *KTBR = [VXReportingStation new];
	KTBR.stationIdentifier = @"KTBR";
	KTBR.associatedCity = @"STATESBORO";
	KTBR.associatedState = @"GA";
	KTBR.latitude = 32.4825;
	KTBR.longitude = 81.7367;
	[stationList addObject:KTBR];

	VXReportingStation *KTBX = [VXReportingStation new];
	KTBX.stationIdentifier = @"KTBX";
	KTBX.associatedCity = @"BOYSEN RESERVOIR";
	KTBX.associatedState = @"WY";
	KTBX.latitude = 43.4644;
	KTBX.longitude = 108.238;
	[stationList addObject:KTBX];

	VXReportingStation *KTCC = [VXReportingStation new];
	KTCC.stationIdentifier = @"KTCC";
	KTCC.associatedCity = @"TUCUMCARI";
	KTCC.associatedState = @"NM";
	KTCC.latitude = 35.1828;
	KTCC.longitude = 103.603;
	[stationList addObject:KTCC];

	VXReportingStation *KTCL = [VXReportingStation new];
	KTCL.stationIdentifier = @"KTCL";
	KTCL.associatedCity = @"TUSCALOOSA";
	KTCL.associatedState = @"AL";
	KTCL.latitude = 33.2206;
	KTCL.longitude = 87.6114;
	[stationList addObject:KTCL];

	VXReportingStation *KTCM = [VXReportingStation new];
	KTCM.stationIdentifier = @"KTCM";
	KTCM.associatedCity = @"TACOMA";
	KTCM.associatedState = @"WA";
	KTCM.latitude = 47.1375;
	KTCM.longitude = 122.476;
	[stationList addObject:KTCM];

	VXReportingStation *KTCS = [VXReportingStation new];
	KTCS.stationIdentifier = @"KTCS";
	KTCS.associatedCity = @"TRUTH OR CONSEQUENCES";
	KTCS.associatedState = @"NM";
	KTCS.latitude = 33.2369;
	KTCS.longitude = 107.272;
	[stationList addObject:KTCS];

	VXReportingStation *KTDF = [VXReportingStation new];
	KTDF.stationIdentifier = @"KTDF";
	KTDF.associatedCity = @"ROXBORO";
	KTDF.associatedState = @"NC";
	KTDF.latitude = 36.2847;
	KTDF.longitude = 78.9842;
	[stationList addObject:KTDF];

	VXReportingStation *KTDO = [VXReportingStation new];
	KTDO.stationIdentifier = @"KTDO";
	KTDO.associatedCity = @"TOLEDO";
	KTDO.associatedState = @"WA";
	KTDO.latitude = 46.4769;
	KTDO.longitude = 122.807;
	[stationList addObject:KTDO];

	VXReportingStation *KTDR = [VXReportingStation new];
	KTDR.stationIdentifier = @"KTDR";
	KTDR.associatedCity = @"PANAMA CITY";
	KTDR.associatedState = @"FL";
	KTDR.latitude = 30.0364;
	KTDR.longitude = 85.5281;
	[stationList addObject:KTDR];

	VXReportingStation *KTDZ = [VXReportingStation new];
	KTDZ.stationIdentifier = @"KTDZ";
	KTDZ.associatedCity = @"TOLEDO";
	KTDZ.associatedState = @"OH";
	KTDZ.latitude = 41.5639;
	KTDZ.longitude = 83.4811;
	[stationList addObject:KTDZ];

	VXReportingStation *KTEB = [VXReportingStation new];
	KTEB.stationIdentifier = @"KTEB";
	KTEB.associatedCity = @"TETERBORO";
	KTEB.associatedState = @"NJ";
	KTEB.latitude = 40.85;
	KTEB.longitude = 74.0608;
	[stationList addObject:KTEB];

	VXReportingStation *KTEW = [VXReportingStation new];
	KTEW.stationIdentifier = @"KTEW";
	KTEW.associatedCity = @"MASON";
	KTEW.associatedState = @"MI";
	KTEW.latitude = 42.5656;
	KTEW.longitude = 84.4231;
	[stationList addObject:KTEW];

	VXReportingStation *KTEX = [VXReportingStation new];
	KTEX.stationIdentifier = @"KTEX";
	KTEX.associatedCity = @"TELLURIDE";
	KTEX.associatedState = @"CO";
	KTEX.latitude = 37.9536;
	KTEX.longitude = 107.908;
	[stationList addObject:KTEX];

	VXReportingStation *KTFP = [VXReportingStation new];
	KTFP.stationIdentifier = @"KTFP";
	KTFP.associatedCity = @"INGLESIDE";
	KTFP.associatedState = @"TX";
	KTFP.latitude = 27.9128;
	KTFP.longitude = 97.2114;
	[stationList addObject:KTFP];

	VXReportingStation *KTGI = [VXReportingStation new];
	KTGI.stationIdentifier = @"KTGI";
	KTGI.associatedCity = @"TANGIER";
	KTGI.associatedState = @"VA";
	KTGI.latitude = 37.8278;
	KTGI.longitude = 75.9964;
	[stationList addObject:KTGI];

	VXReportingStation *KTHA = [VXReportingStation new];
	KTHA.stationIdentifier = @"KTHA";
	KTHA.associatedCity = @"TULLAHOMA";
	KTHA.associatedState = @"TN";
	KTHA.latitude = 35.38;
	KTHA.longitude = 86.2467;
	[stationList addObject:KTHA];

	VXReportingStation *KTHV = [VXReportingStation new];
	KTHV.stationIdentifier = @"KTHV";
	KTHV.associatedCity = @"YORK";
	KTHV.associatedState = @"PA";
	KTHV.latitude = 39.9169;
	KTHV.longitude = 76.8728;
	[stationList addObject:KTHV];

	VXReportingStation *KTIF = [VXReportingStation new];
	KTIF.stationIdentifier = @"KTIF";
	KTIF.associatedCity = @"THEDFORD";
	KTIF.associatedState = @"NE";
	KTIF.latitude = 41.9619;
	KTIF.longitude = 100.569;
	[stationList addObject:KTIF];

	VXReportingStation *KTIK = [VXReportingStation new];
	KTIK.stationIdentifier = @"KTIK";
	KTIK.associatedCity = @"OKLAHOMA CITY";
	KTIK.associatedState = @"OK";
	KTIK.latitude = 35.4144;
	KTIK.longitude = 97.3867;
	[stationList addObject:KTIK];

	VXReportingStation *KTIP = [VXReportingStation new];
	KTIP.stationIdentifier = @"KTIP";
	KTIP.associatedCity = @"RANTOUL";
	KTIP.associatedState = @"IL";
	KTIP.latitude = 40.2933;
	KTIP.longitude = 88.1422;
	[stationList addObject:KTIP];

	VXReportingStation *KTIW = [VXReportingStation new];
	KTIW.stationIdentifier = @"KTIW";
	KTIW.associatedCity = @"TACOMA";
	KTIW.associatedState = @"WA";
	KTIW.latitude = 47.2678;
	KTIW.longitude = 122.578;
	[stationList addObject:KTIW];

	VXReportingStation *KTIX = [VXReportingStation new];
	KTIX.stationIdentifier = @"KTIX";
	KTIX.associatedCity = @"TITUSVILLE";
	KTIX.associatedState = @"FL";
	KTIX.latitude = 28.5147;
	KTIX.longitude = 80.7992;
	[stationList addObject:KTIX];

	VXReportingStation *KTKC = [VXReportingStation new];
	KTKC.stationIdentifier = @"KTKC";
	KTKC.associatedCity = @"TRACY";
	KTKC.associatedState = @"MN";
	KTKC.latitude = 44.2489;
	KTKC.longitude = 95.6072;
	[stationList addObject:KTKC];

	VXReportingStation *KTKI = [VXReportingStation new];
	KTKI.stationIdentifier = @"KTKI";
	KTKI.associatedCity = @"DALLAS";
	KTKI.associatedState = @"TX";
	KTKI.latitude = 33.1778;
	KTKI.longitude = 96.5903;
	[stationList addObject:KTKI];

	VXReportingStation *KTKV = [VXReportingStation new];
	KTKV.stationIdentifier = @"KTKV";
	KTKV.associatedCity = @"TOMAHAWK";
	KTKV.associatedState = @"WI";
	KTKV.latitude = 45.4689;
	KTKV.longitude = 89.8056;
	[stationList addObject:KTKV];

	VXReportingStation *KTLH = [VXReportingStation new];
	KTLH.stationIdentifier = @"KTLH";
	KTLH.associatedCity = @"TALLAHASSEE";
	KTLH.associatedState = @"FL";
	KTLH.latitude = 30.3964;
	KTLH.longitude = 84.3503;
	[stationList addObject:KTLH];

	VXReportingStation *KTMA = [VXReportingStation new];
	KTMA.stationIdentifier = @"KTMA";
	KTMA.associatedCity = @"TIFTON";
	KTMA.associatedState = @"GA";
	KTMA.latitude = 31.4289;
	KTMA.longitude = 83.4883;
	[stationList addObject:KTMA];

	VXReportingStation *KTMB = [VXReportingStation new];
	KTMB.stationIdentifier = @"KTMB";
	KTMB.associatedCity = @"MIAMI";
	KTMB.associatedState = @"FL";
	KTMB.latitude = 25.6478;
	KTMB.longitude = 80.4328;
	[stationList addObject:KTMB];

	VXReportingStation *KTME = [VXReportingStation new];
	KTME.stationIdentifier = @"KTME";
	KTME.associatedCity = @"HOUSTON";
	KTME.associatedState = @"TX";
	KTME.latitude = 29.8064;
	KTME.longitude = 95.9011;
	[stationList addObject:KTME];

	VXReportingStation *KTMK = [VXReportingStation new];
	KTMK.stationIdentifier = @"KTMK";
	KTMK.associatedCity = @"TILLAMOOK";
	KTMK.associatedState = @"OR";
	KTMK.latitude = 45.4192;
	KTMK.longitude = 123.818;
	[stationList addObject:KTMK];

	VXReportingStation *KTNB = [VXReportingStation new];
	KTNB.stationIdentifier = @"KTNB";
	KTNB.associatedCity = @"BOONE";
	KTNB.associatedState = @"NC";
	KTNB.latitude = 36.1986;
	KTNB.longitude = 81.6514;
	[stationList addObject:KTNB];

	VXReportingStation *KTNU = [VXReportingStation new];
	KTNU.stationIdentifier = @"KTNU";
	KTNU.associatedCity = @"NEWTON";
	KTNU.associatedState = @"IA";
	KTNU.latitude = 41.6742;
	KTNU.longitude = 93.0217;
	[stationList addObject:KTNU];

	VXReportingStation *KTOA = [VXReportingStation new];
	KTOA.stationIdentifier = @"KTOA";
	KTOA.associatedCity = @"TORRANCE";
	KTOA.associatedState = @"CA";
	KTOA.latitude = 33.8033;
	KTOA.longitude = 118.339;
	[stationList addObject:KTOA];

	VXReportingStation *KTOB = [VXReportingStation new];
	KTOB.stationIdentifier = @"KTOB";
	KTOB.associatedCity = @"DODGE CENTER";
	KTOB.associatedState = @"MN";
	KTOB.latitude = 44.0178;
	KTOB.longitude = 92.8314;
	[stationList addObject:KTOB];

	VXReportingStation *KTOC = [VXReportingStation new];
	KTOC.stationIdentifier = @"KTOC";
	KTOC.associatedCity = @"TOCCOA";
	KTOC.associatedState = @"GA";
	KTOC.latitude = 34.5881;
	KTOC.longitude = 83.2972;
	[stationList addObject:KTOC];

	VXReportingStation *KTOI = [VXReportingStation new];
	KTOI.stationIdentifier = @"KTOI";
	KTOI.associatedCity = @"TROY";
	KTOI.associatedState = @"AL";
	KTOI.latitude = 31.8603;
	KTOI.longitude = 86.0119;
	[stationList addObject:KTOI];

	VXReportingStation *KTOL = [VXReportingStation new];
	KTOL.stationIdentifier = @"KTOL";
	KTOL.associatedCity = @"TOLEDO";
	KTOL.associatedState = @"OH";
	KTOL.latitude = 41.5867;
	KTOL.longitude = 83.8078;
	[stationList addObject:KTOL];

	VXReportingStation *KTOP = [VXReportingStation new];
	KTOP.stationIdentifier = @"KTOP";
	KTOP.associatedCity = @"TOPEKA";
	KTOP.associatedState = @"KS";
	KTOP.latitude = 39.0686;
	KTOP.longitude = 95.6222;
	[stationList addObject:KTOP];

	VXReportingStation *KTOR = [VXReportingStation new];
	KTOR.stationIdentifier = @"KTOR";
	KTOR.associatedCity = @"TORRINGTON";
	KTOR.associatedState = @"WY";
	KTOR.latitude = 42.0644;
	KTOR.longitude = 104.153;
	[stationList addObject:KTOR];

	VXReportingStation *KTPA = [VXReportingStation new];
	KTPA.stationIdentifier = @"KTPA";
	KTPA.associatedCity = @"TAMPA";
	KTPA.associatedState = @"FL";
	KTPA.latitude = 27.9753;
	KTPA.longitude = 82.5331;
	[stationList addObject:KTPA];

	VXReportingStation *KTPF = [VXReportingStation new];
	KTPF.stationIdentifier = @"KTPF";
	KTPF.associatedCity = @"TAMPA";
	KTPF.associatedState = @"FL";
	KTPF.latitude = 27.9156;
	KTPF.longitude = 82.4492;
	[stationList addObject:KTPF];

	VXReportingStation *KTPH = [VXReportingStation new];
	KTPH.stationIdentifier = @"KTPH";
	KTPH.associatedCity = @"TONOPAH";
	KTPH.associatedState = @"NV";
	KTPH.latitude = 38.06;
	KTPH.longitude = 117.087;
	[stationList addObject:KTPH];

	VXReportingStation *KTPL = [VXReportingStation new];
	KTPL.stationIdentifier = @"KTPL";
	KTPL.associatedCity = @"TEMPLE";
	KTPL.associatedState = @"TX";
	KTPL.latitude = 31.1525;
	KTPL.longitude = 97.4078;
	[stationList addObject:KTPL];

	VXReportingStation *KTQE = [VXReportingStation new];
	KTQE.stationIdentifier = @"KTQE";
	KTQE.associatedCity = @"TEKAMAH";
	KTQE.associatedState = @"NE";
	KTQE.latitude = 41.7633;
	KTQE.longitude = 96.1778;
	[stationList addObject:KTQE];

	VXReportingStation *KTQH = [VXReportingStation new];
	KTQH.stationIdentifier = @"KTQH";
	KTQH.associatedCity = @"TAHLEQUAH";
	KTQH.associatedState = @"OK";
	KTQH.latitude = 35.9289;
	KTQH.longitude = 95.0044;
	[stationList addObject:KTQH];

	VXReportingStation *KTRI = [VXReportingStation new];
	KTRI.stationIdentifier = @"KTRI";
	KTRI.associatedCity = @"BRISTOL/JOHNSON/KINGSPORT";
	KTRI.associatedState = @"TN";
	KTRI.latitude = 36.475;
	KTRI.longitude = 82.4072;
	[stationList addObject:KTRI];

	VXReportingStation *KTRK = [VXReportingStation new];
	KTRK.stationIdentifier = @"KTRK";
	KTRK.associatedCity = @"TRUCKEE";
	KTRK.associatedState = @"CA";
	KTRK.latitude = 39.3153;
	KTRK.longitude = 120.137;
	[stationList addObject:KTRK];

	VXReportingStation *KTRL = [VXReportingStation new];
	KTRL.stationIdentifier = @"KTRL";
	KTRL.associatedCity = @"TERRELL";
	KTRL.associatedState = @"TX";
	KTRL.latitude = 32.7092;
	KTRL.longitude = 96.2672;
	[stationList addObject:KTRL];

	VXReportingStation *KTRM = [VXReportingStation new];
	KTRM.stationIdentifier = @"KTRM";
	KTRM.associatedCity = @"PALM SPRINGS";
	KTRM.associatedState = @"CA";
	KTRM.latitude = 33.6267;
	KTRM.longitude = 116.159;
	[stationList addObject:KTRM];

	VXReportingStation *KTSP = [VXReportingStation new];
	KTSP.stationIdentifier = @"KTSP";
	KTSP.associatedCity = @"TEHACHAPI";
	KTSP.associatedState = @"CA";
	KTSP.latitude = 35.135;
	KTSP.longitude = 118.439;
	[stationList addObject:KTSP];

	VXReportingStation *KTTA = [VXReportingStation new];
	KTTA.stationIdentifier = @"KTTA";
	KTTA.associatedCity = @"SANFORD";
	KTTA.associatedState = @"NC";
	KTTA.latitude = 35.5836;
	KTTA.longitude = 79.1006;
	[stationList addObject:KTTA];

	VXReportingStation *KTTD = [VXReportingStation new];
	KTTD.stationIdentifier = @"KTTD";
	KTTD.associatedCity = @"PORTLAND";
	KTTD.associatedState = @"OR";
	KTTD.latitude = 45.5492;
	KTTD.longitude = 122.401;
	[stationList addObject:KTTD];

	VXReportingStation *KTTF = [VXReportingStation new];
	KTTF.stationIdentifier = @"KTTF";
	KTTF.associatedCity = @"MONROE";
	KTTF.associatedState = @"MI";
	KTTF.latitude = 41.9397;
	KTTF.longitude = 83.4344;
	[stationList addObject:KTTF];

	VXReportingStation *KTTN = [VXReportingStation new];
	KTTN.stationIdentifier = @"KTTN";
	KTTN.associatedCity = @"TRENTON";
	KTTN.associatedState = @"NJ";
	KTTN.latitude = 40.2767;
	KTTN.longitude = 74.8133;
	[stationList addObject:KTTN];

	VXReportingStation *KTTS = [VXReportingStation new];
	KTTS.stationIdentifier = @"KTTS";
	KTTS.associatedCity = @"TITUSVILLE";
	KTTS.associatedState = @"FL";
	KTTS.latitude = 28.615;
	KTTS.longitude = 80.6944;
	[stationList addObject:KTTS];

	VXReportingStation *KTUL = [VXReportingStation new];
	KTUL.stationIdentifier = @"KTUL";
	KTUL.associatedCity = @"TULSA";
	KTUL.associatedState = @"OK";
	KTUL.latitude = 36.1983;
	KTUL.longitude = 95.8881;
	[stationList addObject:KTUL];

	VXReportingStation *KTUP = [VXReportingStation new];
	KTUP.stationIdentifier = @"KTUP";
	KTUP.associatedCity = @"TUPELO";
	KTUP.associatedState = @"MS";
	KTUP.latitude = 34.2681;
	KTUP.longitude = 88.7697;
	[stationList addObject:KTUP];

	VXReportingStation *KTUS = [VXReportingStation new];
	KTUS.stationIdentifier = @"KTUS";
	KTUS.associatedCity = @"TUCSON";
	KTUS.associatedState = @"AZ";
	KTUS.latitude = 32.1158;
	KTUS.longitude = 110.941;
	[stationList addObject:KTUS];

	VXReportingStation *KTVC = [VXReportingStation new];
	KTVC.stationIdentifier = @"KTVC";
	KTVC.associatedCity = @"TRAVERSE CITY";
	KTVC.associatedState = @"MI";
	KTVC.latitude = 44.7414;
	KTVC.longitude = 85.5822;
	[stationList addObject:KTVC];

	VXReportingStation *KTVF = [VXReportingStation new];
	KTVF.stationIdentifier = @"KTVF";
	KTVF.associatedCity = @"THIEF RIVER FALLS";
	KTVF.associatedState = @"MN";
	KTVF.latitude = 48.0653;
	KTVF.longitude = 96.1833;
	[stationList addObject:KTVF];

	VXReportingStation *KTVI = [VXReportingStation new];
	KTVI.stationIdentifier = @"KTVI";
	KTVI.associatedCity = @"THOMASVILLE";
	KTVI.associatedState = @"GA";
	KTVI.latitude = 30.9025;
	KTVI.longitude = 83.8825;
	[stationList addObject:KTVI];

	VXReportingStation *KTVL = [VXReportingStation new];
	KTVL.stationIdentifier = @"KTVL";
	KTVL.associatedCity = @"SOUTH LAKE TAHOE";
	KTVL.associatedState = @"CA";
	KTVL.latitude = 38.8936;
	KTVL.longitude = 119.995;
	[stationList addObject:KTVL];

	VXReportingStation *KTVR = [VXReportingStation new];
	KTVR.stationIdentifier = @"KTVR";
	KTVR.associatedCity = @"TALLULAH/VICKSBURG, MS";
	KTVR.associatedState = @"LA";
	KTVR.latitude = 32.3514;
	KTVR.longitude = 91.0275;
	[stationList addObject:KTVR];

	VXReportingStation *KTVY = [VXReportingStation new];
	KTVY.stationIdentifier = @"KTVY";
	KTVY.associatedCity = @"TOOELE";
	KTVY.associatedState = @"UT";
	KTVY.latitude = 40.6144;
	KTVY.longitude = 112.354;
	[stationList addObject:KTVY];

	VXReportingStation *KTWF = [VXReportingStation new];
	KTWF.stationIdentifier = @"KTWF";
	KTWF.associatedCity = @"TWIN FALLS";
	KTWF.associatedState = @"ID";
	KTWF.latitude = 42.4817;
	KTWF.longitude = 114.487;
	[stationList addObject:KTWF];

	VXReportingStation *KTWM = [VXReportingStation new];
	KTWM.stationIdentifier = @"KTWM";
	KTWM.associatedCity = @"TWO HARBORS";
	KTWM.associatedState = @"MN";
	KTWM.latitude = 47.0492;
	KTWM.longitude = 91.745;
	[stationList addObject:KTWM];

	VXReportingStation *KTXK = [VXReportingStation new];
	KTXK.stationIdentifier = @"KTXK";
	KTXK.associatedCity = @"TEXARKANA";
	KTXK.associatedState = @"AR";
	KTXK.latitude = 33.4536;
	KTXK.longitude = 93.9908;
	[stationList addObject:KTXK];

	VXReportingStation *KTYQ = [VXReportingStation new];
	KTYQ.stationIdentifier = @"KTYQ";
	KTYQ.associatedCity = @"INDIANAPOLIS";
	KTYQ.associatedState = @"IN";
	KTYQ.latitude = 40.0306;
	KTYQ.longitude = 86.2514;
	[stationList addObject:KTYQ];

	VXReportingStation *KTYR = [VXReportingStation new];
	KTYR.stationIdentifier = @"KTYR";
	KTYR.associatedCity = @"TYLER";
	KTYR.associatedState = @"TX";
	KTYR.latitude = 32.3539;
	KTYR.longitude = 95.4022;
	[stationList addObject:KTYR];

	VXReportingStation *KTYS = [VXReportingStation new];
	KTYS.stationIdentifier = @"KTYS";
	KTYS.associatedCity = @"KNOXVILLE";
	KTYS.associatedState = @"TN";
	KTYS.latitude = 35.8108;
	KTYS.longitude = 83.9939;
	[stationList addObject:KTYS];

	VXReportingStation *KTZR = [VXReportingStation new];
	KTZR.stationIdentifier = @"KTZR";
	KTZR.associatedCity = @"COLUMBUS";
	KTZR.associatedState = @"OH";
	KTZR.latitude = 39.9011;
	KTZR.longitude = 83.1367;
	[stationList addObject:KTZR];

	VXReportingStation *KU16 = [VXReportingStation new];
	KU16.stationIdentifier = @"KU16";
	KU16.associatedCity = @"EAGLE RANGE";
	KU16.associatedState = @"UT";
	KU16.latitude = 41.0497;
	KU16.longitude = 113.067;
	[stationList addObject:KU16];

	VXReportingStation *KU24 = [VXReportingStation new];
	KU24.stationIdentifier = @"KU24";
	KU24.associatedCity = @"DELTA";
	KU24.associatedState = @"UT";
	KU24.latitude = 39.3497;
	KU24.longitude = 112.567;
	[stationList addObject:KU24];

	VXReportingStation *KU28 = [VXReportingStation new];
	KU28.stationIdentifier = @"KU28";
	KU28.associatedCity = @"GREEN RIVER";
	KU28.associatedState = @"UT";
	KU28.latitude = 38.9997;
	KU28.longitude = 110.151;
	[stationList addObject:KU28];

	VXReportingStation *KU31 = [VXReportingStation new];
	KU31.stationIdentifier = @"KU31";
	KU31.associatedCity = @"AUSTIN";
	KU31.associatedState = @"NV";
	KU31.latitude = 39.4664;
	KU31.longitude = 117.168;
	[stationList addObject:KU31];

	VXReportingStation *KU42 = [VXReportingStation new];
	KU42.stationIdentifier = @"KU42";
	KU42.associatedCity = @"SALT LAKE CITY";
	KU42.associatedState = @"UT";
	KU42.latitude = 40.6194;
	KU42.longitude = 111.991;
	[stationList addObject:KU42];

	VXReportingStation *KU67 = [VXReportingStation new];
	KU67.stationIdentifier = @"KU67";
	KU67.associatedCity = @"ROOSEVELT";
	KU67.associatedState = @"UT";
	KU67.latitude = 40.2997;
	KU67.longitude = 109.984;
	[stationList addObject:KU67];

	VXReportingStation *KUAO = [VXReportingStation new];
	KUAO.stationIdentifier = @"KUAO";
	KUAO.associatedCity = @"AURORA";
	KUAO.associatedState = @"OR";
	KUAO.latitude = 45.2469;
	KUAO.longitude = 122.77;
	[stationList addObject:KUAO];

	VXReportingStation *KUBE = [VXReportingStation new];
	KUBE.stationIdentifier = @"KUBE";
	KUBE.associatedCity = @"CUMBERLAND";
	KUBE.associatedState = @"WI";
	KUBE.latitude = 45.5058;
	KUBE.longitude = 91.9808;
	[stationList addObject:KUBE];

	VXReportingStation *KUCA = [VXReportingStation new];
	KUCA.stationIdentifier = @"KUCA";
	KUCA.associatedCity = @"UTICA";
	KUCA.associatedState = @"NY";
	KUCA.latitude = 43.145;
	KUCA.longitude = 75.3836;
	[stationList addObject:KUCA];

	VXReportingStation *KUDG = [VXReportingStation new];
	KUDG.stationIdentifier = @"KUDG";
	KUDG.associatedCity = @"DARLINGTON";
	KUDG.associatedState = @"SC";
	KUDG.latitude = 34.4492;
	KUDG.longitude = 79.8903;
	[stationList addObject:KUDG];

	VXReportingStation *KUES = [VXReportingStation new];
	KUES.stationIdentifier = @"KUES";
	KUES.associatedCity = @"WAUKESHA";
	KUES.associatedState = @"WI";
	KUES.latitude = 43.0408;
	KUES.longitude = 88.2369;
	[stationList addObject:KUES];

	VXReportingStation *KUGN = [VXReportingStation new];
	KUGN.stationIdentifier = @"KUGN";
	KUGN.associatedCity = @"CHICAGO/WAUKEGAN";
	KUGN.associatedState = @"IL";
	KUGN.latitude = 42.4219;
	KUGN.longitude = 87.8678;
	[stationList addObject:KUGN];

	VXReportingStation *KUIL = [VXReportingStation new];
	KUIL.stationIdentifier = @"KUIL";
	KUIL.associatedCity = @"QUILLAYUTE";
	KUIL.associatedState = @"WA";
	KUIL.latitude = 47.9364;
	KUIL.longitude = 124.562;
	[stationList addObject:KUIL];

	VXReportingStation *KUIN = [VXReportingStation new];
	KUIN.stationIdentifier = @"KUIN";
	KUIN.associatedCity = @"QUINCY";
	KUIN.associatedState = @"IL";
	KUIN.latitude = 39.9425;
	KUIN.longitude = 91.1944;
	[stationList addObject:KUIN];

	VXReportingStation *KUKF = [VXReportingStation new];
	KUKF.stationIdentifier = @"KUKF";
	KUKF.associatedCity = @"NORTH WILKESBORO";
	KUKF.associatedState = @"NC";
	KUKF.latitude = 36.2186;
	KUKF.longitude = 81.1;
	[stationList addObject:KUKF];

	VXReportingStation *KUKI = [VXReportingStation new];
	KUKI.stationIdentifier = @"KUKI";
	KUKI.associatedCity = @"UKIAH";
	KUKI.associatedState = @"CA";
	KUKI.latitude = 39.1258;
	KUKI.longitude = 123.201;
	[stationList addObject:KUKI];

	VXReportingStation *KUKL = [VXReportingStation new];
	KUKL.stationIdentifier = @"KUKL";
	KUKL.associatedCity = @"BURLINGTON";
	KUKL.associatedState = @"KS";
	KUKL.latitude = 38.3022;
	KUKL.longitude = 95.7247;
	[stationList addObject:KUKL];

	VXReportingStation *KUKT = [VXReportingStation new];
	KUKT.stationIdentifier = @"KUKT";
	KUKT.associatedCity = @"QUAKERTOWN";
	KUKT.associatedState = @"PA";
	KUKT.latitude = 40.435;
	KUKT.longitude = 75.3817;
	[stationList addObject:KUKT];

	VXReportingStation *KULM = [VXReportingStation new];
	KULM.stationIdentifier = @"KULM";
	KULM.associatedCity = @"NEW ULM";
	KULM.associatedState = @"MN";
	KULM.latitude = 44.3194;
	KULM.longitude = 94.5022;
	[stationList addObject:KULM];

	VXReportingStation *KUNO = [VXReportingStation new];
	KUNO.stationIdentifier = @"KUNO";
	KUNO.associatedCity = @"WEST PLAINS";
	KUNO.associatedState = @"MO";
	KUNO.latitude = 36.8781;
	KUNO.longitude = 91.9028;
	[stationList addObject:KUNO];

	VXReportingStation *KUNU = [VXReportingStation new];
	KUNU.stationIdentifier = @"KUNU";
	KUNU.associatedCity = @"JUNEAU";
	KUNU.associatedState = @"WI";
	KUNU.latitude = 43.4264;
	KUNU.longitude = 88.7031;
	[stationList addObject:KUNU];

	VXReportingStation *KUNV = [VXReportingStation new];
	KUNV.stationIdentifier = @"KUNV";
	KUNV.associatedCity = @"STATE COLLEGE";
	KUNV.associatedState = @"PA";
	KUNV.latitude = 40.8492;
	KUNV.longitude = 77.8486;
	[stationList addObject:KUNV];

	VXReportingStation *KUOX = [VXReportingStation new];
	KUOX.stationIdentifier = @"KUOX";
	KUOX.associatedCity = @"OXFORD";
	KUOX.associatedState = @"MS";
	KUOX.latitude = 34.3842;
	KUOX.longitude = 89.5353;
	[stationList addObject:KUOX];

	VXReportingStation *KUSE = [VXReportingStation new];
	KUSE.stationIdentifier = @"KUSE";
	KUSE.associatedCity = @"WAUSEON";
	KUSE.associatedState = @"OH";
	KUSE.latitude = 41.6117;
	KUSE.longitude = 84.1275;
	[stationList addObject:KUSE];

	VXReportingStation *KUTS = [VXReportingStation new];
	KUTS.stationIdentifier = @"KUTS";
	KUTS.associatedCity = @"HUNTSVILLE";
	KUTS.associatedState = @"TX";
	KUTS.latitude = 30.7467;
	KUTS.longitude = 95.5869;
	[stationList addObject:KUTS];

	VXReportingStation *KUUU = [VXReportingStation new];
	KUUU.stationIdentifier = @"KUUU";
	KUUU.associatedCity = @"NEWPORT";
	KUUU.associatedState = @"RI";
	KUUU.latitude = 41.5322;
	KUUU.longitude = 71.2814;
	[stationList addObject:KUUU];

	VXReportingStation *KUVA = [VXReportingStation new];
	KUVA.stationIdentifier = @"KUVA";
	KUVA.associatedCity = @"UVALDE";
	KUVA.associatedState = @"TX";
	KUVA.latitude = 29.2111;
	KUVA.longitude = 99.7433;
	[stationList addObject:KUVA];

	VXReportingStation *KUXL = [VXReportingStation new];
	KUXL.stationIdentifier = @"KUXL";
	KUXL.associatedCity = @"SULPHUR";
	KUXL.associatedState = @"LA";
	KUXL.latitude = 30.1314;
	KUXL.longitude = 93.3761;
	[stationList addObject:KUXL];

	VXReportingStation *KUYF = [VXReportingStation new];
	KUYF.stationIdentifier = @"KUYF";
	KUYF.associatedCity = @"LONDON";
	KUYF.associatedState = @"OH";
	KUYF.latitude = 39.9311;
	KUYF.longitude = 83.465;
	[stationList addObject:KUYF];

	VXReportingStation *KUZA = [VXReportingStation new];
	KUZA.stationIdentifier = @"KUZA";
	KUZA.associatedCity = @"ROCK HILL";
	KUZA.associatedState = @"SC";
	KUZA.latitude = 34.9878;
	KUZA.longitude = 81.0569;
	[stationList addObject:KUZA];

	VXReportingStation *KVAD = [VXReportingStation new];
	KVAD.stationIdentifier = @"KVAD";
	KVAD.associatedCity = @"VALDOSTA";
	KVAD.associatedState = @"GA";
	KVAD.latitude = 30.9678;
	KVAD.longitude = 83.1928;
	[stationList addObject:KVAD];

	VXReportingStation *KVAF = [VXReportingStation new];
	KVAF.stationIdentifier = @"KVAF";
	KVAF.associatedCity = @"BOOMVANG";
	KVAF.associatedState = @"TX";
	KVAF.latitude = 27.3536;
	KVAF.longitude = 94.6253;
	[stationList addObject:KVAF];

	VXReportingStation *KVAY = [VXReportingStation new];
	KVAY.stationIdentifier = @"KVAY";
	KVAY.associatedCity = @"MOUNT HOLLY";
	KVAY.associatedState = @"NJ";
	KVAY.latitude = 39.9428;
	KVAY.longitude = 74.8456;
	[stationList addObject:KVAY];

	VXReportingStation *KVBG = [VXReportingStation new];
	KVBG.stationIdentifier = @"KVBG";
	KVBG.associatedCity = @"LOMPOC";
	KVBG.associatedState = @"CA";
	KVBG.latitude = 34.7294;
	KVBG.longitude = 120.577;
	[stationList addObject:KVBG];

	VXReportingStation *KVBS = [VXReportingStation new];
	KVBS.stationIdentifier = @"KVBS";
	KVBS.associatedCity = @"SABINE 13B";
	KVBS.associatedState = @"LA";
	KVBS.latitude = 29.4783;
	KVBS.longitude = 93.6383;
	[stationList addObject:KVBS];

	VXReportingStation *KVBT = [VXReportingStation new];
	KVBT.stationIdentifier = @"KVBT";
	KVBT.associatedCity = @"BENTONVILLE";
	KVBT.associatedState = @"AR";
	KVBT.latitude = 36.3456;
	KVBT.longitude = 94.2192;
	[stationList addObject:KVBT];

	VXReportingStation *KVBW = [VXReportingStation new];
	KVBW.stationIdentifier = @"KVBW";
	KVBW.associatedCity = @"BRIDGEWATER";
	KVBW.associatedState = @"VA";
	KVBW.latitude = 38.3667;
	KVBW.longitude = 78.9603;
	[stationList addObject:KVBW];

	VXReportingStation *KVCB = [VXReportingStation new];
	KVCB.stationIdentifier = @"KVCB";
	KVCB.associatedCity = @"VACAVILLE";
	KVCB.associatedState = @"CA";
	KVCB.latitude = 38.3767;
	KVCB.longitude = 121.962;
	[stationList addObject:KVCB];

	VXReportingStation *KVCT = [VXReportingStation new];
	KVCT.stationIdentifier = @"KVCT";
	KVCT.associatedCity = @"VICTORIA";
	KVCT.associatedState = @"TX";
	KVCT.latitude = 28.8525;
	KVCT.longitude = 96.9183;
	[stationList addObject:KVCT];

	VXReportingStation *KVCV = [VXReportingStation new];
	KVCV.stationIdentifier = @"KVCV";
	KVCV.associatedCity = @"VICTORVILLE";
	KVCV.associatedState = @"CA";
	KVCV.latitude = 34.5972;
	KVCV.longitude = 117.383;
	[stationList addObject:KVCV];

	VXReportingStation *KVDF = [VXReportingStation new];
	KVDF.stationIdentifier = @"KVDF";
	KVDF.associatedCity = @"TAMPA";
	KVDF.associatedState = @"FL";
	KVDF.latitude = 28.0139;
	KVDF.longitude = 82.3453;
	[stationList addObject:KVDF];

	VXReportingStation *KVDI = [VXReportingStation new];
	KVDI.stationIdentifier = @"KVDI";
	KVDI.associatedCity = @"VIDALIA";
	KVDI.associatedState = @"GA";
	KVDI.latitude = 32.1925;
	KVDI.longitude = 82.3711;
	[stationList addObject:KVDI];

	VXReportingStation *KVEL = [VXReportingStation new];
	KVEL.stationIdentifier = @"KVEL";
	KVEL.associatedCity = @"VERNAL";
	KVEL.associatedState = @"UT";
	KVEL.latitude = 40.4408;
	KVEL.longitude = 109.51;
	[stationList addObject:KVEL];

	VXReportingStation *KVER = [VXReportingStation new];
	KVER.stationIdentifier = @"KVER";
	KVER.associatedCity = @"BOONVILLE";
	KVER.associatedState = @"MO";
	KVER.latitude = 38.9467;
	KVER.longitude = 92.6825;
	[stationList addObject:KVER];

	VXReportingStation *KVGT = [VXReportingStation new];
	KVGT.stationIdentifier = @"KVGT";
	KVGT.associatedCity = @"LAS VEGAS";
	KVGT.associatedState = @"NV";
	KVGT.latitude = 36.2125;
	KVGT.longitude = 115.196;
	[stationList addObject:KVGT];

	VXReportingStation *KVIH = [VXReportingStation new];
	KVIH.stationIdentifier = @"KVIH";
	KVIH.associatedCity = @"ROLLA/VICHY";
	KVIH.associatedState = @"MO";
	KVIH.latitude = 38.1272;
	KVIH.longitude = 91.7694;
	[stationList addObject:KVIH];

	VXReportingStation *KVIS = [VXReportingStation new];
	KVIS.stationIdentifier = @"KVIS";
	KVIS.associatedCity = @"VISALIA";
	KVIS.associatedState = @"CA";
	KVIS.latitude = 36.3186;
	KVIS.longitude = 119.393;
	[stationList addObject:KVIS];

	VXReportingStation *KVJI = [VXReportingStation new];
	KVJI.stationIdentifier = @"KVJI";
	KVJI.associatedCity = @"ABINGDON";
	KVJI.associatedState = @"VA";
	KVJI.latitude = 36.6869;
	KVJI.longitude = 82.0333;
	[stationList addObject:KVJI];

	VXReportingStation *KVKY = [VXReportingStation new];
	KVKY.stationIdentifier = @"KVKY";
	KVKY.associatedCity = @"MAIN PASS 289";
	KVKY.associatedState = @"LA";
	KVKY.latitude = 29.2486;
	KVKY.longitude = 88.4414;
	[stationList addObject:KVKY];

	VXReportingStation *KVLD = [VXReportingStation new];
	KVLD.stationIdentifier = @"KVLD";
	KVLD.associatedCity = @"VALDOSTA";
	KVLD.associatedState = @"GA";
	KVLD.latitude = 30.7825;
	KVLD.longitude = 83.2767;
	[stationList addObject:KVLD];

	VXReportingStation *KVNC = [VXReportingStation new];
	KVNC.stationIdentifier = @"KVNC";
	KVNC.associatedCity = @"VENICE";
	KVNC.associatedState = @"FL";
	KVNC.latitude = 27.0714;
	KVNC.longitude = 82.4403;
	[stationList addObject:KVNC];

	VXReportingStation *KVNY = [VXReportingStation new];
	KVNY.stationIdentifier = @"KVNY";
	KVNY.associatedCity = @"VAN NUYS";
	KVNY.associatedState = @"CA";
	KVNY.latitude = 34.2119;
	KVNY.longitude = 118.491;
	[stationList addObject:KVNY];

	VXReportingStation *KVOA = [VXReportingStation new];
	KVOA.stationIdentifier = @"KVOA";
	KVOA.associatedCity = @"VIOSCAL KNOLL 786";
	KVOA.associatedState = @"LA";
	KVOA.latitude = 29.2289;
	KVOA.longitude = 87.7808;
	[stationList addObject:KVOA];

	VXReportingStation *KVOK = [VXReportingStation new];
	KVOK.stationIdentifier = @"KVOK";
	KVOK.associatedCity = @"CAMP DOUGLAS";
	KVOK.associatedState = @"WI";
	KVOK.latitude = 43.9389;
	KVOK.longitude = 90.2533;
	[stationList addObject:KVOK];

	VXReportingStation *KVPC = [VXReportingStation new];
	KVPC.stationIdentifier = @"KVPC";
	KVPC.associatedCity = @"CARTERSVILLE";
	KVPC.associatedState = @"GA";
	KVPC.latitude = 34.1231;
	KVPC.longitude = 84.8486;
	[stationList addObject:KVPC];

	VXReportingStation *KVPS = [VXReportingStation new];
	KVPS.stationIdentifier = @"KVPS";
	KVPS.associatedCity = @"VALPARAISO";
	KVPS.associatedState = @"FL";
	KVPS.latitude = 30.4833;
	KVPS.longitude = 86.5253;
	[stationList addObject:KVPS];

	VXReportingStation *KVPZ = [VXReportingStation new];
	KVPZ.stationIdentifier = @"KVPZ";
	KVPZ.associatedCity = @"VALPARAISO";
	KVPZ.associatedState = @"IN";
	KVPZ.latitude = 41.4539;
	KVPZ.longitude = 87.0069;
	[stationList addObject:KVPZ];

	VXReportingStation *KVQQ = [VXReportingStation new];
	KVQQ.stationIdentifier = @"KVQQ";
	KVQQ.associatedCity = @"JACKSONVILLE";
	KVQQ.associatedState = @"FL";
	KVQQ.latitude = 30.2186;
	KVQQ.longitude = 81.8767;
	[stationList addObject:KVQQ];

	VXReportingStation *KVQT = [VXReportingStation new];
	KVQT.stationIdentifier = @"KVQT";
	KVQT.associatedCity = @"VERMILLION 331";
	KVQT.associatedState = @"LA";
	KVQT.latitude = 28.2703;
	KVQT.longitude = 92.2636;
	[stationList addObject:KVQT];

	VXReportingStation *KVRB = [VXReportingStation new];
	KVRB.stationIdentifier = @"KVRB";
	KVRB.associatedCity = @"VERO BEACH";
	KVRB.associatedState = @"FL";
	KVRB.latitude = 27.6556;
	KVRB.longitude = 80.4178;
	[stationList addObject:KVRB];

	VXReportingStation *KVSF = [VXReportingStation new];
	KVSF.stationIdentifier = @"KVSF";
	KVSF.associatedCity = @"SPRINGFIELD";
	KVSF.associatedState = @"VT";
	KVSF.latitude = 43.3436;
	KVSF.longitude = 72.5172;
	[stationList addObject:KVSF];

	VXReportingStation *KVTA = [VXReportingStation new];
	KVTA.stationIdentifier = @"KVTA";
	KVTA.associatedCity = @"NEWARK";
	KVTA.associatedState = @"OH";
	KVTA.latitude = 41.0264;
	KVTA.longitude = 82.4633;
	[stationList addObject:KVTA];

	VXReportingStation *KVTI = [VXReportingStation new];
	KVTI.stationIdentifier = @"KVTI";
	KVTI.associatedCity = @"VINTON";
	KVTI.associatedState = @"IA";
	KVTI.latitude = 42.2186;
	KVTI.longitude = 92.0258;
	[stationList addObject:KVTI];

	VXReportingStation *KVTN = [VXReportingStation new];
	KVTN.stationIdentifier = @"KVTN";
	KVTN.associatedCity = @"VALENTINE";
	KVTN.associatedState = @"NE";
	KVTN.latitude = 42.8578;
	KVTN.longitude = 100.547;
	[stationList addObject:KVTN];

	VXReportingStation *KVTP = [VXReportingStation new];
	KVTP.stationIdentifier = @"KVTP";
	KVTP.associatedCity = @"LA VETA PASS";
	KVTP.associatedState = @"CO";
	KVTP.latitude = 37.5119;
	KVTP.longitude = 105.171;
	[stationList addObject:KVTP];

	VXReportingStation *KVUJ = [VXReportingStation new];
	KVUJ.stationIdentifier = @"KVUJ";
	KVUJ.associatedCity = @"ALBEMARLE";
	KVUJ.associatedState = @"NC";
	KVUJ.latitude = 35.4167;
	KVUJ.longitude = 80.1506;
	[stationList addObject:KVUJ];

	VXReportingStation *KVUO = [VXReportingStation new];
	KVUO.stationIdentifier = @"KVUO";
	KVUO.associatedCity = @"VANCOUVER";
	KVUO.associatedState = @"WA";
	KVUO.latitude = 45.6203;
	KVUO.longitude = 122.656;
	[stationList addObject:KVUO];

	VXReportingStation *KVVG = [VXReportingStation new];
	KVVG.stationIdentifier = @"KVVG";
	KVVG.associatedCity = @"THE VILLAGES";
	KVVG.associatedState = @"FL";
	KVVG.latitude = 28.9614;
	KVVG.longitude = 81.9694;
	[stationList addObject:KVVG];

	VXReportingStation *KVVV = [VXReportingStation new];
	KVVV.stationIdentifier = @"KVVV";
	KVVV.associatedCity = @"ORTONVILLE";
	KVVV.associatedState = @"MN";
	KVVV.latitude = 45.3056;
	KVVV.longitude = 96.4242;
	[stationList addObject:KVVV];

	VXReportingStation *KVWU = [VXReportingStation new];
	KVWU.stationIdentifier = @"KVWU";
	KVWU.associatedCity = @"WASKISH";
	KVWU.associatedState = @"MN";
	KVWU.latitude = 48.1539;
	KVWU.longitude = 94.5167;
	[stationList addObject:KVWU];

	VXReportingStation *KVYS = [VXReportingStation new];
	KVYS.stationIdentifier = @"KVYS";
	KVYS.associatedCity = @"PERU";
	KVYS.associatedState = @"IL";
	KVYS.latitude = 41.3517;
	KVYS.longitude = 89.1531;
	[stationList addObject:KVYS];

	VXReportingStation *KW13 = [VXReportingStation new];
	KW13.stationIdentifier = @"KW13";
	KW13.associatedCity = @"WAYNESBORO";
	KW13.associatedState = @"VA";
	KW13.latitude = 38.0767;
	KW13.longitude = 78.9442;
	[stationList addObject:KW13];

	VXReportingStation *KW22 = [VXReportingStation new];
	KW22.stationIdentifier = @"KW22";
	KW22.associatedCity = @"BUCKHANNON";
	KW22.associatedState = @"WV";
	KW22.latitude = 39.0017;
	KW22.longitude = 80.2711;
	[stationList addObject:KW22];

	VXReportingStation *KW29 = [VXReportingStation new];
	KW29.stationIdentifier = @"KW29";
	KW29.associatedCity = @"STEVENSVILLE";
	KW29.associatedState = @"MD";
	KW29.latitude = 38.9775;
	KW29.longitude = 76.3275;
	[stationList addObject:KW29];

	VXReportingStation *KW31 = [VXReportingStation new];
	KW31.stationIdentifier = @"KW31";
	KW31.associatedCity = @"KENBRIDGE";
	KW31.associatedState = @"VA";
	KW31.latitude = 36.9603;
	KW31.longitude = 78.185;
	[stationList addObject:KW31];

	VXReportingStation *KW43 = [VXReportingStation new];
	KW43.stationIdentifier = @"KW43";
	KW43.associatedCity = @"HULETT";
	KW43.associatedState = @"WY";
	KW43.latitude = 44.6681;
	KW43.longitude = 104.571;
	[stationList addObject:KW43];

	VXReportingStation *KW60 = [VXReportingStation new];
	KW60.stationIdentifier = @"KW60";
	KW60.associatedCity = @"WEST CAMERON 560";
	KW60.associatedState = @"OG";
	KW60.latitude = 28.2667;
	KW60.longitude = 93.1667;
	[stationList addObject:KW60];

	VXReportingStation *KW63 = [VXReportingStation new];
	KW63.stationIdentifier = @"KW63";
	KW63.associatedCity = @"CLARKSVILLE";
	KW63.associatedState = @"VA";
	KW63.latitude = 36.6006;
	KW63.longitude = 78.5556;
	[stationList addObject:KW63];

	VXReportingStation *KW75 = [VXReportingStation new];
	KW75.stationIdentifier = @"KW75";
	KW75.associatedCity = @"SALUDA";
	KW75.associatedState = @"VA";
	KW75.latitude = 37.6031;
	KW75.longitude = 76.4458;
	[stationList addObject:KW75];

	VXReportingStation *KW78 = [VXReportingStation new];
	KW78.stationIdentifier = @"KW78";
	KW78.associatedCity = @"SOUTH BOSTON";
	KW78.associatedState = @"VA";
	KW78.latitude = 36.7086;
	KW78.longitude = 78.8461;
	[stationList addObject:KW78];

	VXReportingStation *KW81 = [VXReportingStation new];
	KW81.stationIdentifier = @"KW81";
	KW81.associatedCity = @"CREWE";
	KW81.associatedState = @"VA";
	KW81.latitude = 37.1808;
	KW81.longitude = 78.0983;
	[stationList addObject:KW81];

	VXReportingStation *KW96 = [VXReportingStation new];
	KW96.stationIdentifier = @"KW96";
	KW96.associatedCity = @"QUINTON";
	KW96.associatedState = @"VA";
	KW96.latitude = 37.5025;
	KW96.longitude = 77.1258;
	[stationList addObject:KW96];

	VXReportingStation *KWAL = [VXReportingStation new];
	KWAL.stationIdentifier = @"KWAL";
	KWAL.associatedCity = @"WALLOPS ISLAND";
	KWAL.associatedState = @"VA";
	KWAL.latitude = 37.94;
	KWAL.longitude = 75.4664;
	[stationList addObject:KWAL];

	VXReportingStation *KWDG = [VXReportingStation new];
	KWDG.stationIdentifier = @"KWDG";
	KWDG.associatedCity = @"ENID";
	KWDG.associatedState = @"OK";
	KWDG.latitude = 36.3792;
	KWDG.longitude = 97.7911;
	[stationList addObject:KWDG];

	VXReportingStation *KWDR = [VXReportingStation new];
	KWDR.stationIdentifier = @"KWDR";
	KWDR.associatedCity = @"WINDER";
	KWDR.associatedState = @"GA";
	KWDR.latitude = 33.9828;
	KWDR.longitude = 83.6672;
	[stationList addObject:KWDR];

	VXReportingStation *KWEY = [VXReportingStation new];
	KWEY.stationIdentifier = @"KWEY";
	KWEY.associatedCity = @"WEST YELLOWSTONE";
	KWEY.associatedState = @"MT";
	KWEY.latitude = 44.6497;
	KWEY.longitude = 111.101;
	[stationList addObject:KWEY];

	VXReportingStation *KWHP = [VXReportingStation new];
	KWHP.stationIdentifier = @"KWHP";
	KWHP.associatedCity = @"LOS ANGELES";
	KWHP.associatedState = @"CA";
	KWHP.latitude = 34.2597;
	KWHP.longitude = 118.414;
	[stationList addObject:KWHP];

	VXReportingStation *KWJF = [VXReportingStation new];
	KWJF.stationIdentifier = @"KWJF";
	KWJF.associatedCity = @"LANCASTER";
	KWJF.associatedState = @"CA";
	KWJF.latitude = 34.7408;
	KWJF.longitude = 118.219;
	[stationList addObject:KWJF];

	VXReportingStation *KWLD = [VXReportingStation new];
	KWLD.stationIdentifier = @"KWLD";
	KWLD.associatedCity = @"WINFIELD/ARKANSAS CITY";
	KWLD.associatedState = @"KS";
	KWLD.latitude = 37.1686;
	KWLD.longitude = 97.0375;
	[stationList addObject:KWLD];

	VXReportingStation *KWMC = [VXReportingStation new];
	KWMC.stationIdentifier = @"KWMC";
	KWMC.associatedCity = @"WINNEMUCCA";
	KWMC.associatedState = @"NV";
	KWMC.latitude = 40.8964;
	KWMC.longitude = 117.806;
	[stationList addObject:KWMC];

	VXReportingStation *KWRB = [VXReportingStation new];
	KWRB.stationIdentifier = @"KWRB";
	KWRB.associatedCity = @"WARNER ROBINS";
	KWRB.associatedState = @"GA";
	KWRB.latitude = 32.64;
	KWRB.longitude = 83.5917;
	[stationList addObject:KWRB];

	VXReportingStation *KWRI = [VXReportingStation new];
	KWRI.stationIdentifier = @"KWRI";
	KWRI.associatedCity = @"WRIGHTSTOWN";
	KWRI.associatedState = @"NJ";
	KWRI.latitude = 40.0153;
	KWRI.longitude = 74.5936;
	[stationList addObject:KWRI];

	VXReportingStation *KWRL = [VXReportingStation new];
	KWRL.stationIdentifier = @"KWRL";
	KWRL.associatedCity = @"WORLAND";
	KWRL.associatedState = @"WY";
	KWRL.latitude = 43.9656;
	KWRL.longitude = 107.951;
	[stationList addObject:KWRL];

	VXReportingStation *KWST = [VXReportingStation new];
	KWST.stationIdentifier = @"KWST";
	KWST.associatedCity = @"WESTERLY";
	KWST.associatedState = @"RI";
	KWST.latitude = 41.3494;
	KWST.longitude = 71.8033;
	[stationList addObject:KWST];

	VXReportingStation *KWVI = [VXReportingStation new];
	KWVI.stationIdentifier = @"KWVI";
	KWVI.associatedCity = @"WATSONVILLE";
	KWVI.associatedState = @"CA";
	KWVI.latitude = 36.9392;
	KWVI.longitude = 121.79;
	[stationList addObject:KWVI];

	VXReportingStation *KWVL = [VXReportingStation new];
	KWVL.stationIdentifier = @"KWVL";
	KWVL.associatedCity = @"WATERVILLE";
	KWVL.associatedState = @"ME";
	KWVL.latitude = 44.5331;
	KWVL.longitude = 69.6753;
	[stationList addObject:KWVL];

	VXReportingStation *KWWD = [VXReportingStation new];
	KWWD.stationIdentifier = @"KWWD";
	KWWD.associatedCity = @"WILDWOOD";
	KWWD.associatedState = @"NJ";
	KWWD.latitude = 39.0083;
	KWWD.longitude = 74.9081;
	[stationList addObject:KWWD];

	VXReportingStation *KWWR = [VXReportingStation new];
	KWWR.stationIdentifier = @"KWWR";
	KWWR.associatedCity = @"WOODWARD";
	KWWR.associatedState = @"OK";
	KWWR.latitude = 36.4367;
	KWWR.longitude = 99.5208;
	[stationList addObject:KWWR];

	VXReportingStation *KWYS = [VXReportingStation new];
	KWYS.stationIdentifier = @"KWYS";
	KWYS.associatedCity = @"WEST YELLOWSTONE";
	KWYS.associatedState = @"MT";
	KWYS.latitude = 44.6883;
	KWYS.longitude = 111.117;
	[stationList addObject:KWYS];

	VXReportingStation *KXBP = [VXReportingStation new];
	KXBP.stationIdentifier = @"KXBP";
	KXBP.associatedCity = @"BRIDGEPORT";
	KXBP.associatedState = @"TX";
	KXBP.latitude = 33.1753;
	KXBP.longitude = 97.8283;
	[stationList addObject:KXBP];

	VXReportingStation *KXCN = [VXReportingStation new];
	KXCN.stationIdentifier = @"KXCN";
	KXCN.associatedCity = @"GREEN CANYON 184";
	KXCN.associatedState = @"OG";
	KXCN.latitude = 27.7667;
	KXCN.longitude = 91.5167;
	[stationList addObject:KXCN];

	VXReportingStation *KXIH = [VXReportingStation new];
	KXIH.stationIdentifier = @"KXIH";
	KXIH.associatedCity = @"HIGH ISLAND 179";
	KXIH.associatedState = @"LA";
	KXIH.latitude = 29.1806;
	KXIH.longitude = 94.5211;
	[stationList addObject:KXIH];

	VXReportingStation *KXLL = [VXReportingStation new];
	KXLL.stationIdentifier = @"KXLL";
	KXLL.associatedCity = @"ALLENTOWN";
	KXLL.associatedState = @"PA";
	KXLL.latitude = 40.5703;
	KXLL.longitude = 75.4892;
	[stationList addObject:KXLL];

	VXReportingStation *KXMR = [VXReportingStation new];
	KXMR.stationIdentifier = @"KXMR";
	KXMR.associatedCity = @"COCOA BEACH";
	KXMR.associatedState = @"FL";
	KXMR.latitude = 28.4675;
	KXMR.longitude = 80.5667;
	[stationList addObject:KXMR];

	VXReportingStation *KXNA = [VXReportingStation new];
	KXNA.stationIdentifier = @"KXNA";
	KXNA.associatedCity = @"FAYETTEVILLE/SPRINGDALE/";
	KXNA.associatedState = @"AR";
	KXNA.latitude = 36.2817;
	KXNA.longitude = 94.3067;
	[stationList addObject:KXNA];

	VXReportingStation *KXPY = [VXReportingStation new];
	KXPY.stationIdentifier = @"KXPY";
	KXPY.associatedCity = @"GRAND ISLE";
	KXPY.associatedState = @"LA";
	KXPY.latitude = 29.1264;
	KXPY.longitude = 90.2064;
	[stationList addObject:KXPY];

	VXReportingStation *KXSA = [VXReportingStation new];
	KXSA.stationIdentifier = @"KXSA";
	KXSA.associatedCity = @"TAPPAHANNOCK";
	KXSA.associatedState = @"VA";
	KXSA.latitude = 37.8606;
	KXSA.longitude = 76.9014;
	[stationList addObject:KXSA];

	VXReportingStation *KXVG = [VXReportingStation new];
	KXVG.stationIdentifier = @"KXVG";
	KXVG.associatedCity = @"LONGVILLE";
	KXVG.associatedState = @"MN";
	KXVG.latitude = 46.99;
	KXVG.longitude = 94.2039;
	[stationList addObject:KXVG];

	VXReportingStation *KY19 = [VXReportingStation new];
	KY19.stationIdentifier = @"KY19";
	KY19.associatedCity = @"MANDAN";
	KY19.associatedState = @"ND";
	KY19.latitude = 46.7672;
	KY19.longitude = 100.897;
	[stationList addObject:KY19];

	VXReportingStation *KY23 = [VXReportingStation new];
	KY23.stationIdentifier = @"KY23";
	KY23.associatedCity = @"CHETEK";
	KY23.associatedState = @"WI";
	KY23.latitude = 45.3103;
	KY23.longitude = 91.6378;
	[stationList addObject:KY23];

	VXReportingStation *KY49 = [VXReportingStation new];
	KY49.stationIdentifier = @"KY49";
	KY49.associatedCity = @"WALKER";
	KY49.associatedState = @"MN";
	KY49.latitude = 47.1597;
	KY49.longitude = 94.6431;
	[stationList addObject:KY49];

	VXReportingStation *KY50 = [VXReportingStation new];
	KY50.stationIdentifier = @"KY50";
	KY50.associatedCity = @"WAUTOMA";
	KY50.associatedState = @"WI";
	KY50.latitude = 44.0414;
	KY50.longitude = 89.3044;
	[stationList addObject:KY50];

	VXReportingStation *KYIP = [VXReportingStation new];
	KYIP.stationIdentifier = @"KYIP";
	KYIP.associatedCity = @"DETROIT";
	KYIP.associatedState = @"MI";
	KYIP.latitude = 42.2378;
	KYIP.longitude = 83.5303;
	[stationList addObject:KYIP];

	VXReportingStation *KYKM = [VXReportingStation new];
	KYKM.stationIdentifier = @"KYKM";
	KYKM.associatedCity = @"YAKIMA";
	KYKM.associatedState = @"WA";
	KYKM.latitude = 46.5681;
	KYKM.longitude = 120.544;
	[stationList addObject:KYKM];

	VXReportingStation *KYKN = [VXReportingStation new];
	KYKN.stationIdentifier = @"KYKN";
	KYKN.associatedCity = @"YANKTON";
	KYKN.associatedState = @"SD";
	KYKN.latitude = 42.9167;
	KYKN.longitude = 97.3858;
	[stationList addObject:KYKN];

	VXReportingStation *KYMA = [VXReportingStation new];
	KYMA.stationIdentifier = @"KYMA";
	KYMA.associatedCity = @"MAYO";
	KYMA.associatedState = @"CA";
	KYMA.latitude = 63.6167;
	KYMA.longitude = 135.867;
	[stationList addObject:KYMA];

	VXReportingStation *KYNG = [VXReportingStation new];
	KYNG.stationIdentifier = @"KYNG";
	KYNG.associatedCity = @"YOUNGSTOWN/WARREN";
	KYNG.associatedState = @"OH";
	KYNG.latitude = 41.2606;
	KYNG.longitude = 80.6789;
	[stationList addObject:KYNG];

	VXReportingStation *KZPH = [VXReportingStation new];
	KZPH.stationIdentifier = @"KZPH";
	KZPH.associatedCity = @"ZEPHYRHILLS";
	KZPH.associatedState = @"FL";
	KZPH.latitude = 28.5281;
	KZPH.longitude = 82.1558;
	[stationList addObject:KZPH];

	VXReportingStation *KZZV = [VXReportingStation new];
	KZZV.stationIdentifier = @"KZZV";
	KZZV.associatedCity = @"ZANESVILLE";
	KZZV.associatedState = @"OH";
	KZZV.latitude = 39.9444;
	KZZV.longitude = 81.8919;
	[stationList addObject:KZZV];

	VXReportingStation *PABA = [VXReportingStation new];
	PABA.stationIdentifier = @"PABA";
	PABA.associatedCity = @"BARTER ISLAND";
	PABA.associatedState = @"AK";
	PABA.latitude = 70.1344;
	PABA.longitude = 143.581;
	[stationList addObject:PABA];

	VXReportingStation *PACZ = [VXReportingStation new];
	PACZ.stationIdentifier = @"PACZ";
	PACZ.associatedCity = @"CAPE ROMANZOF";
	PACZ.associatedState = @"AK";
	PACZ.latitude = 61.7792;
	PACZ.longitude = 166.037;
	[stationList addObject:PACZ];

	VXReportingStation *PAED = [VXReportingStation new];
	PAED.stationIdentifier = @"PAED";
	PAED.associatedCity = @"ELMENDORF AFB";
	PAED.associatedState = @"AK";
	PAED.latitude = 61.2511;
	PAED.longitude = 149.792;
	[stationList addObject:PAED];

	VXReportingStation *PAEH = [VXReportingStation new];
	PAEH.stationIdentifier = @"PAEH";
	PAEH.associatedCity = @"CAPE NEWENHAM AFS";
	PAEH.associatedState = @"AK";
	PAEH.latitude = 58.6442;
	PAEH.longitude = 162.061;
	[stationList addObject:PAEH];

	VXReportingStation *PAEI = [VXReportingStation new];
	PAEI.stationIdentifier = @"PAEI";
	PAEI.associatedCity = @"EIELSON AFB";
	PAEI.associatedState = @"AK";
	PAEI.latitude = 64.6678;
	PAEI.longitude = 147.099;
	[stationList addObject:PAEI];

	VXReportingStation *PAFA = [VXReportingStation new];
	PAFA.stationIdentifier = @"PAFA";
	PAFA.associatedCity = @"FAIRBANKS";
	PAFA.associatedState = @"AK";
	PAFA.latitude = 64.8;
	PAFA.longitude = 148.012;
	[stationList addObject:PAFA];

	VXReportingStation *PAFB = [VXReportingStation new];
	PAFB.stationIdentifier = @"PAFB";
	PAFB.associatedCity = @"WAINWRIGHT AFB";
	PAFB.associatedState = @"AK";
	PAFB.latitude = 64.8378;
	PAFB.longitude = 147.616;
	[stationList addObject:PAFB];

	VXReportingStation *PAFR = [VXReportingStation new];
	PAFR.stationIdentifier = @"PAFR";
	PAFR.associatedCity = @"BRYANT AHP";
	PAFR.associatedState = @"AK";
	PAFR.latitude = 61.2611;
	PAFR.longitude = 149.657;
	[stationList addObject:PAFR];

	VXReportingStation *PAIM = [VXReportingStation new];
	PAIM.stationIdentifier = @"PAIM";
	PAIM.associatedCity = @"INDIAN MOUNTAIN AFS";
	PAIM.associatedState = @"AK";
	PAIM.latitude = 65.9944;
	PAIM.longitude = 153.706;
	[stationList addObject:PAIM];

	VXReportingStation *PAKN = [VXReportingStation new];
	PAKN.stationIdentifier = @"PAKN";
	PAKN.associatedCity = @"KING SALMON";
	PAKN.associatedState = @"AK";
	PAKN.latitude = 58.7244;
	PAKN.longitude = 156.752;
	[stationList addObject:PAKN];

	VXReportingStation *PALU = [VXReportingStation new];
	PALU.stationIdentifier = @"PALU";
	PALU.associatedCity = @"CAPE LISBURNE AFS";
	PALU.associatedState = @"AK";
	PALU.latitude = 68.8742;
	PALU.longitude = 166.111;
	[stationList addObject:PALU];

	VXReportingStation *PANC = [VXReportingStation new];
	PANC.stationIdentifier = @"PANC";
	PANC.associatedCity = @"ANCHORAGE";
	PANC.associatedState = @"AK";
	PANC.latitude = 61.1506;
	PANC.longitude = 150.206;
	[stationList addObject:PANC];

	VXReportingStation *PAOM = [VXReportingStation new];
	PAOM.stationIdentifier = @"PAOM";
	PAOM.associatedCity = @"NOME";
	PAOM.associatedState = @"AK";
	PAOM.latitude = 64.485;
	PAOM.longitude = 165.254;
	[stationList addObject:PAOM];

	VXReportingStation *PASV = [VXReportingStation new];
	PASV.stationIdentifier = @"PASV";
	PASV.associatedCity = @"SPARREVOHN AFS";
	PASV.associatedState = @"AK";
	PASV.latitude = 61.1008;
	PASV.longitude = 155.594;
	[stationList addObject:PASV];

	VXReportingStation *PASY = [VXReportingStation new];
	PASY.stationIdentifier = @"PASY";
	PASY.associatedCity = @"SHEMYA AFB";
	PASY.associatedState = @"AK";
	PASY.latitude = 52.7103;
	PASY.longitude = 174.116;
	[stationList addObject:PASY];

	VXReportingStation *PATC = [VXReportingStation new];
	PATC.stationIdentifier = @"PATC";
	PATC.associatedCity = @"TIN CITY AFS";
	PATC.associatedState = @"AK";
	PATC.latitude = 65.5608;
	PATC.longitude = 167.923;
	[stationList addObject:PATC];

	VXReportingStation *PATL = [VXReportingStation new];
	PATL.stationIdentifier = @"PATL";
	PATL.associatedCity = @"TATALINA";
	PATL.associatedState = @"AK";
	PATL.latitude = 62.8958;
	PATL.longitude = 155.979;
	[stationList addObject:PATL];

	VXReportingStation *PGUA = [VXReportingStation new];
	PGUA.stationIdentifier = @"PGUA";
	PGUA.associatedCity = @"ANDERSEN AFB";
	PGUA.associatedState = @"GU";
	PGUA.latitude = 13.5833;
	PGUA.longitude = 144.933;
	[stationList addObject:PGUA];

	VXReportingStation *PHHI = [VXReportingStation new];
	PHHI.stationIdentifier = @"PHHI";
	PHHI.associatedCity = @"WHEELER AFB";
	PHHI.associatedState = @"HI";
	PHHI.latitude = 21.4833;
	PHHI.longitude = 158.033;
	[stationList addObject:PHHI];

	VXReportingStation *PHNG = [VXReportingStation new];
	PHNG.stationIdentifier = @"PHNG";
	PHNG.associatedCity = @"KANEOHE BAY MCAS";
	PHNG.associatedState = @"HI";
	PHNG.latitude = 21.4467;
	PHNG.longitude = 157.764;
	[stationList addObject:PHNG];

	VXReportingStation *PHNL = [VXReportingStation new];
	PHNL.stationIdentifier = @"PHNL";
	PHNL.associatedCity = @"HONOLULU";
	PHNL.associatedState = @"HI";
	PHNL.latitude = 21.3189;
	PHNL.longitude = 157.921;
	[stationList addObject:PHNL];

	VXReportingStation *PHSF = [VXReportingStation new];
	PHSF.stationIdentifier = @"PHSF";
	PHSF.associatedCity = @"CAMP POHAKULOA";
	PHSF.associatedState = @"HI";
	PHSF.latitude = 19.76;
	PHSF.longitude = 155.554;
	[stationList addObject:PHSF];

	VXReportingStation *PJON = [VXReportingStation new];
	PJON.stationIdentifier = @"PJON";
	PJON.associatedCity = @"JOHNSTON ISLAND";
	PJON.associatedState = @"TQ";
	PJON.latitude = 16.7333;
	PJON.longitude = 169.533;
	[stationList addObject:PJON];

	VXReportingStation *TJBQ = [VXReportingStation new];
	TJBQ.stationIdentifier = @"TJBQ";
	TJBQ.associatedCity = @"AGUADILLA";
	TJBQ.associatedState = @"PR";
	TJBQ.latitude = 18.4978;
	TJBQ.longitude = 67.1328;
	[stationList addObject:TJBQ];

	VXReportingStation *TJMZ = [VXReportingStation new];
	TJMZ.stationIdentifier = @"TJMZ";
	TJMZ.associatedCity = @"MAYAGUEZ";
	TJMZ.associatedState = @"PR";
	TJMZ.latitude = 18.2478;
	TJMZ.longitude = 67.1494;
	[stationList addObject:TJMZ];

	VXReportingStation *TJNR = [VXReportingStation new];
	TJNR.stationIdentifier = @"TJNR";
	TJNR.associatedCity = @"ROOSEVELT ROADS";
	TJNR.associatedState = @"PR";
	TJNR.latitude = 18.2478;
	TJNR.longitude = 65.6328;
	[stationList addObject:TJNR];

	VXReportingStation *TJPS = [VXReportingStation new];
	TJPS.stationIdentifier = @"TJPS";
	TJPS.associatedCity = @"PONCE";
	TJPS.associatedState = @"PR";
	TJPS.latitude = 18.0144;
	TJPS.longitude = 66.5661;
	[stationList addObject:TJPS];

	VXReportingStation *TJSJ = [VXReportingStation new];
	TJSJ.stationIdentifier = @"TJSJ";
	TJSJ.associatedCity = @"SAN JUAN";
	TJSJ.associatedState = @"PR";
	TJSJ.latitude = 18.4311;
	TJSJ.longitude = 65.9994;
	[stationList addObject:TJSJ];

	VXReportingStation *K01M = [VXReportingStation new];
	K01M.stationIdentifier = @"K01M";
	K01M.associatedCity = @"BELMONT";
	K01M.associatedState = @"MS";
	K01M.latitude = 34.4936;
	K01M.longitude = 88.2033;
	[stationList addObject:K01M];

	VXReportingStation *K04V = [VXReportingStation new];
	K04V.stationIdentifier = @"K04V";
	K04V.associatedCity = @"SAGUACHE";
	K04V.associatedState = @"CO";
	K04V.latitude = 38.0972;
	K04V.longitude = 106.169;
	[stationList addObject:K04V];

	VXReportingStation *K04W = [VXReportingStation new];
	K04W.stationIdentifier = @"K04W";
	K04W.associatedCity = @"HINCKLEY";
	K04W.associatedState = @"MN";
	K04W.latitude = 46.0242;
	K04W.longitude = 92.9;
	[stationList addObject:K04W];

	VXReportingStation *K05U = [VXReportingStation new];
	K05U.stationIdentifier = @"K05U";
	K05U.associatedCity = @"EUREKA";
	K05U.associatedState = @"NV";
	K05U.latitude = 30.6019;
	K05U.longitude = 116.006;
	[stationList addObject:K05U];

	VXReportingStation *K06D = [VXReportingStation new];
	K06D.stationIdentifier = @"K06D";
	K06D.associatedCity = @"ROLLA";
	K06D.associatedState = @"ND";
	K06D.latitude = 48.8842;
	K06D.longitude = 99.6206;
	[stationList addObject:K06D];

	VXReportingStation *K08D = [VXReportingStation new];
	K08D.stationIdentifier = @"K08D";
	K08D.associatedCity = @"STANLEY";
	K08D.associatedState = @"ND";
	K08D.latitude = 48.3006;
	K08D.longitude = 102.406;
	[stationList addObject:K08D];

	VXReportingStation *K0A9 = [VXReportingStation new];
	K0A9.stationIdentifier = @"K0A9";
	K0A9.associatedCity = @"ELIZABETHTON";
	K0A9.associatedState = @"TN";
	K0A9.latitude = 35.3972;
	K0A9.longitude = 84.5625;
	[stationList addObject:K0A9];

	VXReportingStation *K0CO = [VXReportingStation new];
	K0CO.stationIdentifier = @"K0CO";
	K0CO.associatedCity = @"EMPIRE";
	K0CO.associatedState = @"CO";
	K0CO.latitude = 39.7944;
	K0CO.longitude = 105.763;
	[stationList addObject:K0CO];

	VXReportingStation *K0E0 = [VXReportingStation new];
	K0E0.stationIdentifier = @"K0E0";
	K0E0.associatedCity = @"MORIARTY";
	K0E0.associatedState = @"NM";
	K0E0.latitude = 34.9836;
	K0E0.longitude = 105.995;
	[stationList addObject:K0E0];

	VXReportingStation *K0F2 = [VXReportingStation new];
	K0F2.stationIdentifier = @"K0F2";
	K0F2.associatedCity = @"BOWIE";
	K0F2.associatedState = @"TX";
	K0F2.latitude = 33.6008;
	K0F2.longitude = 97.7733;
	[stationList addObject:K0F2];

	VXReportingStation *K0R0 = [VXReportingStation new];
	K0R0.stationIdentifier = @"K0R0";
	K0R0.associatedCity = @"COLUMBIA";
	K0R0.associatedState = @"MS";
	K0R0.latitude = 31.2958;
	K0R0.longitude = 89.8183;
	[stationList addObject:K0R0];

	VXReportingStation *K0S9 = [VXReportingStation new];
	K0S9.stationIdentifier = @"K0S9";
	K0S9.associatedCity = @"PORT TOWNSEND";
	K0S9.associatedState = @"WA";
	K0S9.latitude = 48.0553;
	K0S9.longitude = 122.811;
	[stationList addObject:K0S9];

	VXReportingStation *K0V4 = [VXReportingStation new];
	K0V4.stationIdentifier = @"K0V4";
	K0V4.associatedCity = @"BROOKNEAL";
	K0V4.associatedState = @"VA";
	K0V4.latitude = 37.1397;
	K0V4.longitude = 79.0169;
	[stationList addObject:K0V4];

	VXReportingStation *K0VG = [VXReportingStation new];
	K0VG.stationIdentifier = @"K0VG";
	K0VG.associatedCity = @"JONESVILLE";
	K0VG.associatedState = @"VA";
	K0VG.latitude = 36.6539;
	K0VG.longitude = 83.2178;
	[stationList addObject:K0VG];

	VXReportingStation *K11R = [VXReportingStation new];
	K11R.stationIdentifier = @"K11R";
	K11R.associatedCity = @"BRENHAM";
	K11R.associatedState = @"TX";
	K11R.latitude = 30.2189;
	K11R.longitude = 96.3742;
	[stationList addObject:K11R];

	VXReportingStation *K13K = [VXReportingStation new];
	K13K.stationIdentifier = @"K13K";
	K13K.associatedCity = @"EUREKA";
	K13K.associatedState = @"KS";
	K13K.latitude = 37.8514;
	K13K.longitude = 96.2917;
	[stationList addObject:K13K];

	VXReportingStation *K14Y = [VXReportingStation new];
	K14Y.stationIdentifier = @"K14Y";
	K14Y.associatedCity = @"LONG PRAIRIE";
	K14Y.associatedState = @"MN";
	K14Y.latitude = 45.8981;
	K14Y.longitude = 94.8736;
	[stationList addObject:K14Y];

	VXReportingStation *K18A = [VXReportingStation new];
	K18A.stationIdentifier = @"K18A";
	K18A.associatedCity = @"CANON";
	K18A.associatedState = @"GA";
	K18A.latitude = 34.3403;
	K18A.longitude = 83.1306;
	[stationList addObject:K18A];

	VXReportingStation *K19A = [VXReportingStation new];
	K19A.stationIdentifier = @"K19A";
	K19A.associatedCity = @"JEFFERSON";
	K19A.associatedState = @"GA";
	K19A.latitude = 34.1758;
	K19A.longitude = 83.5614;
	[stationList addObject:K19A];

	VXReportingStation *K1A5 = [VXReportingStation new];
	K1A5.stationIdentifier = @"K1A5";
	K1A5.associatedCity = @"FRANKLIN";
	K1A5.associatedState = @"NC";
	K1A5.latitude = 35.2225;
	K1A5.longitude = 83.4189;
	[stationList addObject:K1A5];

	VXReportingStation *K1A6 = [VXReportingStation new];
	K1A6.stationIdentifier = @"K1A6";
	K1A6.associatedCity = @"MIDDLESBORO";
	K1A6.associatedState = @"KY";
	K1A6.latitude = 36.6106;
	K1A6.longitude = 83.7375;
	[stationList addObject:K1A6];

	VXReportingStation *K1A9 = [VXReportingStation new];
	K1A9.stationIdentifier = @"K1A9";
	K1A9.associatedCity = @"PRATTVILLE";
	K1A9.associatedState = @"AL";
	K1A9.latitude = 32.4372;
	K1A9.longitude = 86.5097;
	[stationList addObject:K1A9];

	VXReportingStation *K1B1 = [VXReportingStation new];
	K1B1.stationIdentifier = @"K1B1";
	K1B1.associatedCity = @"HUDSON";
	K1B1.associatedState = @"NY";
	K1B1.latitude = 42.2911;
	K1B1.longitude = 73.7103;
	[stationList addObject:K1B1];

	VXReportingStation *K1F0 = [VXReportingStation new];
	K1F0.stationIdentifier = @"K1F0";
	K1F0.associatedCity = @"ARDMORE";
	K1F0.associatedState = @"OK";
	K1F0.latitude = 34.1469;
	K1F0.longitude = 97.1225;
	[stationList addObject:K1F0];

	VXReportingStation *K1H2 = [VXReportingStation new];
	K1H2.stationIdentifier = @"K1H2";
	K1H2.associatedCity = @"EFFINGHAM";
	K1H2.associatedState = @"IL";
	K1H2.latitude = 39.0703;
	K1H2.longitude = 88.5333;
	[stationList addObject:K1H2];

	VXReportingStation *K1K1 = [VXReportingStation new];
	K1K1.stationIdentifier = @"K1K1";
	K1K1.associatedCity = @"BENTON";
	K1K1.associatedState = @"KS";
	K1K1.latitude = 37.7744;
	K1K1.longitude = 97.1131;
	[stationList addObject:K1K1];

	VXReportingStation *K1L0 = [VXReportingStation new];
	K1L0.stationIdentifier = @"K1L0";
	K1L0.associatedCity = @"RESERVE";
	K1L0.associatedState = @"LA";
	K1L0.latitude = 30.0869;
	K1L0.longitude = 90.5825;
	[stationList addObject:K1L0];

	VXReportingStation *K1M4 = [VXReportingStation new];
	K1M4.stationIdentifier = @"K1M4";
	K1M4.associatedCity = @"HALEYVILLE";
	K1M4.associatedState = @"AL";
	K1M4.latitude = 34.2661;
	K1M4.longitude = 87.5989;
	[stationList addObject:K1M4];

	VXReportingStation *K1P1 = [VXReportingStation new];
	K1P1.stationIdentifier = @"K1P1";
	K1P1.associatedCity = @"PLYMOUTH";
	K1P1.associatedState = @"NH";
	K1P1.latitude = 43.7792;
	K1P1.longitude = 71.7536;
	[stationList addObject:K1P1];

	VXReportingStation *K1R7 = [VXReportingStation new];
	K1R7.stationIdentifier = @"K1R7";
	K1R7.associatedCity = @"BROOKHAVEN";
	K1R7.associatedState = @"MS";
	K1R7.latitude = 31.6058;
	K1R7.longitude = 90.4092;
	[stationList addObject:K1R7];

	VXReportingStation *K1S5 = [VXReportingStation new];
	K1S5.stationIdentifier = @"K1S5";
	K1S5.associatedCity = @"SUNNYSIDE";
	K1S5.associatedState = @"WA";
	K1S5.latitude = 46.3283;
	K1S5.longitude = 119.974;
	[stationList addObject:K1S5];

	VXReportingStation *K1V6 = [VXReportingStation new];
	K1V6.stationIdentifier = @"K1V6";
	K1V6.associatedCity = @"CANON CITY";
	K1V6.associatedState = @"CO";
	K1V6.latitude = 38.4283;
	K1V6.longitude = 105.106;
	[stationList addObject:K1V6];

	VXReportingStation *K20V = [VXReportingStation new];
	K20V.stationIdentifier = @"K20V";
	K20V.associatedCity = @"KREMMLING";
	K20V.associatedState = @"CO";
	K20V.latitude = 40.0536;
	K20V.longitude = 106.369;
	[stationList addObject:K20V];

	VXReportingStation *K21D = [VXReportingStation new];
	K21D.stationIdentifier = @"K21D";
	K21D.associatedCity = @"ST PAUL";
	K21D.associatedState = @"MN";
	K21D.latitude = 44.9975;
	K21D.longitude = 92.8556;
	[stationList addObject:K21D];

	VXReportingStation *K24J = [VXReportingStation new];
	K24J.stationIdentifier = @"K24J";
	K24J.associatedCity = @"LIVE OAK";
	K24J.associatedState = @"FL";
	K24J.latitude = 30.3003;
	K24J.longitude = 83.0242;
	[stationList addObject:K24J];

	VXReportingStation *K28J = [VXReportingStation new];
	K28J.stationIdentifier = @"K28J";
	K28J.associatedCity = @"PALATKA";
	K28J.associatedState = @"FL";
	K28J.latitude = 29.6583;
	K28J.longitude = 81.6894;
	[stationList addObject:K28J];

	VXReportingStation *K2G9 = [VXReportingStation new];
	K2G9.stationIdentifier = @"K2G9";
	K2G9.associatedCity = @"SOMERSET";
	K2G9.associatedState = @"PA";
	K2G9.latitude = 40.0386;
	K2G9.longitude = 79.0147;
	[stationList addObject:K2G9];

	VXReportingStation *K2I0 = [VXReportingStation new];
	K2I0.stationIdentifier = @"K2I0";
	K2I0.associatedCity = @"MADISONVILLE";
	K2I0.associatedState = @"KY";
	K2I0.latitude = 37.3558;
	K2I0.longitude = 87.3981;
	[stationList addObject:K2I0];

	VXReportingStation *K2WX = [VXReportingStation new];
	K2WX.stationIdentifier = @"K2WX";
	K2WX.associatedCity = @"BUFFALO";
	K2WX.associatedState = @"SD";
	K2WX.latitude = 45.5997;
	K2WX.longitude = 103.55;
	[stationList addObject:K2WX];

	VXReportingStation *K36U = [VXReportingStation new];
	K36U.stationIdentifier = @"K36U";
	K36U.associatedCity = @"HEBER";
	K36U.associatedState = @"UT";
	K36U.latitude = 40.4817;
	K36U.longitude = 111.429;
	[stationList addObject:K36U];

	VXReportingStation *K3AU = [VXReportingStation new];
	K3AU.stationIdentifier = @"K3AU";
	K3AU.associatedCity = @"AUGUSTA";
	K3AU.associatedState = @"KS";
	K3AU.latitude = 37.6714;
	K3AU.longitude = 97.0778;
	[stationList addObject:K3AU];

	VXReportingStation *K3B6 = [VXReportingStation new];
	K3B6.stationIdentifier = @"K3B6";
	K3B6.associatedCity = @"GULF OF MEXICO";
	K3B6.associatedState = @"LA";
	K3B6.latitude = 28.2167;
	K3B6.longitude = 91.6833;
	[stationList addObject:K3B6];

	VXReportingStation *K3D2 = [VXReportingStation new];
	K3D2.stationIdentifier = @"K3D2";
	K3D2.associatedCity = @"EPHRAIM";
	K3D2.associatedState = @"WI";
	K3D2.latitude = 45.1356;
	K3D2.longitude = 87.1881;
	[stationList addObject:K3D2];

	VXReportingStation *K3HT = [VXReportingStation new];
	K3HT.stationIdentifier = @"K3HT";
	K3HT.associatedCity = @"HARLOWTON";
	K3HT.associatedState = @"MT";
	K3HT.latitude = 46.4331;
	K3HT.longitude = 109.834;
	[stationList addObject:K3HT];

	VXReportingStation *K3J7 = [VXReportingStation new];
	K3J7.stationIdentifier = @"K3J7";
	K3J7.associatedCity = @"GREENSBORO";
	K3J7.associatedState = @"GA";
	K3J7.latitude = 33.5975;
	K3J7.longitude = 83.1389;
	[stationList addObject:K3J7];

	VXReportingStation *K3K3 = [VXReportingStation new];
	K3K3.stationIdentifier = @"K3K3";
	K3K3.associatedCity = @"SYRACUSE";
	K3K3.associatedState = @"KS";
	K3K3.latitude = 37.9983;
	K3K3.longitude = 101.748;
	[stationList addObject:K3K3];

	VXReportingStation *K3LF = [VXReportingStation new];
	K3LF.stationIdentifier = @"K3LF";
	K3LF.associatedCity = @"LITCHFIELD";
	K3LF.associatedState = @"IL";
	K3LF.latitude = 39.1622;
	K3LF.longitude = 89.6744;
	[stationList addObject:K3LF];

	VXReportingStation *K3N8 = [VXReportingStation new];
	K3N8.stationIdentifier = @"K3N8";
	K3N8.associatedCity = @"MAHNOMEN";
	K3N8.associatedState = @"MN";
	K3N8.latitude = 47.2603;
	K3N8.longitude = 95.9281;
	[stationList addObject:K3N8];

	VXReportingStation *K3R7 = [VXReportingStation new];
	K3R7.stationIdentifier = @"K3R7";
	K3R7.associatedCity = @"JENNINGS";
	K3R7.associatedState = @"LA";
	K3R7.latitude = 30.2425;
	K3R7.longitude = 92.6733;
	[stationList addObject:K3R7];

	VXReportingStation *K3T5 = [VXReportingStation new];
	K3T5.stationIdentifier = @"K3T5";
	K3T5.associatedCity = @"LA GRANGE";
	K3T5.associatedState = @"TX";
	K3T5.latitude = 29.9078;
	K3T5.longitude = 96.95;
	[stationList addObject:K3T5];

	VXReportingStation *K3TH = [VXReportingStation new];
	K3TH.stationIdentifier = @"K3TH";
	K3TH.associatedCity = @"THOMPSON FALLS";
	K3TH.associatedState = @"MT";
	K3TH.latitude = 47.5997;
	K3TH.longitude = 115.367;
	[stationList addObject:K3TH];

	VXReportingStation *K40J = [VXReportingStation new];
	K40J.stationIdentifier = @"K40J";
	K40J.associatedCity = @"PERRY";
	K40J.associatedState = @"FL";
	K40J.latitude = 30.0692;
	K40J.longitude = 83.5806;
	[stationList addObject:K40J];

	VXReportingStation *K42J = [VXReportingStation new];
	K42J.stationIdentifier = @"K42J";
	K42J.associatedCity = @"KEYSTONE HEIGHTS";
	K42J.associatedState = @"FL";
	K42J.latitude = 29.845;
	K42J.longitude = 82.0453;
	[stationList addObject:K42J];

	VXReportingStation *K46D = [VXReportingStation new];
	K46D.stationIdentifier = @"K46D";
	K46D.associatedCity = @"CARRINGTON";
	K46D.associatedState = @"ND";
	K46D.latitude = 47.4511;
	K46D.longitude = 99.1511;
	[stationList addObject:K46D];

	VXReportingStation *K46U = [VXReportingStation new];
	K46U.stationIdentifier = @"K46U";
	K46U.associatedCity = @"ALPINE";
	K46U.associatedState = @"WY";
	K46U.latitude = 43.1769;
	K46U.longitude = 111.034;
	[stationList addObject:K46U];

	VXReportingStation *K48I = [VXReportingStation new];
	K48I.stationIdentifier = @"K48I";
	K48I.associatedCity = @"SUTTON";
	K48I.associatedState = @"WV";
	K48I.latitude = 38.6869;
	K48I.longitude = 80.6517;
	[stationList addObject:K48I];

	VXReportingStation *K49A = [VXReportingStation new];
	K49A.stationIdentifier = @"K49A";
	K49A.associatedCity = @"ELLIJAY";
	K49A.associatedState = @"GA";
	K49A.latitude = 34.63;
	K49A.longitude = 84.5269;
	[stationList addObject:K49A];

	VXReportingStation *K4A6 = [VXReportingStation new];
	K4A6.stationIdentifier = @"K4A6";
	K4A6.associatedCity = @"SCOTTSBORO";
	K4A6.associatedState = @"AL";
	K4A6.latitude = 34.6872;
	K4A6.longitude = 86.005;
	[stationList addObject:K4A6];

	VXReportingStation *K4A7 = [VXReportingStation new];
	K4A7.stationIdentifier = @"K4A7";
	K4A7.associatedCity = @"ATLANTA";
	K4A7.associatedState = @"GA";
	K4A7.latitude = 33.3897;
	K4A7.longitude = 84.3308;
	[stationList addObject:K4A7];

	VXReportingStation *K4A9 = [VXReportingStation new];
	K4A9.stationIdentifier = @"K4A9";
	K4A9.associatedCity = @"FORT PAYNE";
	K4A9.associatedState = @"AL";
	K4A9.latitude = 34.4736;
	K4A9.longitude = 85.7214;
	[stationList addObject:K4A9];

	VXReportingStation *K4BL = [VXReportingStation new];
	K4BL.stationIdentifier = @"K4BL";
	K4BL.associatedCity = @"BLANDING";
	K4BL.associatedState = @"UT";
	K4BL.latitude = 37.5833;
	K4BL.longitude = 109.484;
	[stationList addObject:K4BL];

	VXReportingStation *K4BM = [VXReportingStation new];
	K4BM.stationIdentifier = @"K4BM";
	K4BM.associatedCity = @"WILKERSON PASS";
	K4BM.associatedState = @"CO";
	K4BM.latitude = 39.0503;
	K4BM.longitude = 105.514;
	[stationList addObject:K4BM];

	VXReportingStation *K4CR = [VXReportingStation new];
	K4CR.stationIdentifier = @"K4CR";
	K4CR.associatedCity = @"CORONA";
	K4CR.associatedState = @"NM";
	K4CR.latitude = 34.3667;
	K4CR.longitude = 105.667;
	[stationList addObject:K4CR];

	VXReportingStation *K4HV = [VXReportingStation new];
	K4HV.stationIdentifier = @"K4HV";
	K4HV.associatedCity = @"HANKSVILLE";
	K4HV.associatedState = @"UT";
	K4HV.latitude = 38.4164;
	K4HV.longitude = 110.684;
	[stationList addObject:K4HV];

	VXReportingStation *K4I3 = [VXReportingStation new];
	K4I3.stationIdentifier = @"K4I3";
	K4I3.associatedCity = @"MOUNT VERNON";
	K4I3.associatedState = @"OH";
	K4I3.latitude = 40.3289;
	K4I3.longitude = 82.5258;
	[stationList addObject:K4I3];

	VXReportingStation *K4I7 = [VXReportingStation new];
	K4I7.stationIdentifier = @"K4I7";
	K4I7.associatedCity = @"GREENCASTLE";
	K4I7.associatedState = @"IN";
	K4I7.latitude = 39.6303;
	K4I7.longitude = 86.8139;
	[stationList addObject:K4I7];

	VXReportingStation *K4M9 = [VXReportingStation new];
	K4M9.stationIdentifier = @"K4M9";
	K4M9.associatedCity = @"CORNING";
	K4M9.associatedState = @"AR";
	K4M9.latitude = 36.4081;
	K4M9.longitude = 90.6497;
	[stationList addObject:K4M9];

	VXReportingStation *K4O4 = [VXReportingStation new];
	K4O4.stationIdentifier = @"K4O4";
	K4O4.associatedCity = @"IDABEL";
	K4O4.associatedState = @"OK";
	K4O4.latitude = 33.9092;
	K4O4.longitude = 94.8592;
	[stationList addObject:K4O4];

	VXReportingStation *K4SL = [VXReportingStation new];
	K4SL.stationIdentifier = @"K4SL";
	K4SL.associatedCity = @"CUBA";
	K4SL.associatedState = @"NM";
	K4SL.latitude = 35.7889;
	K4SL.longitude = 107.242;
	[stationList addObject:K4SL];

	VXReportingStation *K54J = [VXReportingStation new];
	K54J.stationIdentifier = @"K54J";
	K54J.associatedCity = @"DEFUNIAK SPRINGS";
	K54J.associatedState = @"FL";
	K54J.latitude = 30.7311;
	K54J.longitude = 86.1542;
	[stationList addObject:K54J];

	VXReportingStation *K5A6 = [VXReportingStation new];
	K5A6.stationIdentifier = @"K5A6";
	K5A6.associatedCity = @"WINONA";
	K5A6.associatedState = @"MS";
	K5A6.latitude = 33.46;
	K5A6.longitude = 89.7317;
	[stationList addObject:K5A6];

	VXReportingStation *K5B2 = [VXReportingStation new];
	K5B2.stationIdentifier = @"K5B2";
	K5B2.associatedCity = @"SARATOGA SPRINGS";
	K5B2.associatedState = @"NY";
	K5B2.latitude = 43.0511;
	K5B2.longitude = 73.8611;
	[stationList addObject:K5B2];

	VXReportingStation *K5C1 = [VXReportingStation new];
	K5C1.stationIdentifier = @"K5C1";
	K5C1.associatedCity = @"SAN ANTONIO";
	K5C1.associatedState = @"TX";
	K5C1.latitude = 29.7239;
	K5C1.longitude = 98.6944;
	[stationList addObject:K5C1];

	VXReportingStation *K5H4 = [VXReportingStation new];
	K5H4.stationIdentifier = @"K5H4";
	K5H4.associatedCity = @"HARVEY";
	K5H4.associatedState = @"ND";
	K5H4.latitude = 47.7911;
	K5H4.longitude = 99.9317;
	[stationList addObject:K5H4];

	VXReportingStation *K5M9 = [VXReportingStation new];
	K5M9.stationIdentifier = @"K5M9";
	K5M9.associatedCity = @"MARION";
	K5M9.associatedState = @"KY";
	K5M9.latitude = 37.3361;
	K5M9.longitude = 86.1097;
	[stationList addObject:K5M9];

	VXReportingStation *K5R8 = [VXReportingStation new];
	K5R8.stationIdentifier = @"K5R8";
	K5R8.associatedCity = @"DE QUINCY";
	K5R8.associatedState = @"LA";
	K5R8.latitude = 30.4367;
	K5R8.longitude = 93.4694;
	[stationList addObject:K5R8];

	VXReportingStation *K5SM = [VXReportingStation new];
	K5SM.stationIdentifier = @"K5SM";
	K5SM.associatedCity = @"SUNLIGHT MOUNTAIN";
	K5SM.associatedState = @"CO";
	K5SM.latitude = 39.4256;
	K5SM.longitude = 107.379;
	[stationList addObject:K5SM];

	VXReportingStation *K5T9 = [VXReportingStation new];
	K5T9.stationIdentifier = @"K5T9";
	K5T9.associatedCity = @"EAGLE PASS";
	K5T9.associatedState = @"TX";
	K5T9.latitude = 28.8567;
	K5T9.longitude = 100.647;
	[stationList addObject:K5T9];

	VXReportingStation *K65S = [VXReportingStation new];
	K65S.stationIdentifier = @"K65S";
	K65S.associatedCity = @"BONNERS FERRY";
	K65S.associatedState = @"ID";
	K65S.latitude = 48.7253;
	K65S.longitude = 116.293;
	[stationList addObject:K65S];

	VXReportingStation *K6A1 = [VXReportingStation new];
	K6A1.stationIdentifier = @"K6A1";
	K6A1.associatedCity = @"BUTLER";
	K6A1.associatedState = @"GA";
	K6A1.latitude = 32.5731;
	K6A1.longitude = 84.2469;
	[stationList addObject:K6A1];

	VXReportingStation *K6A2 = [VXReportingStation new];
	K6A2.stationIdentifier = @"K6A2";
	K6A2.associatedCity = @"GRIFFIN";
	K6A2.associatedState = @"GA";
	K6A2.latitude = 33.2269;
	K6A2.longitude = 84.2747;
	[stationList addObject:K6A2];

	VXReportingStation *K6B0 = [VXReportingStation new];
	K6B0.stationIdentifier = @"K6B0";
	K6B0.associatedCity = @"MIDDLEBURY";
	K6B0.associatedState = @"VT";
	K6B0.latitude = 43.9886;
	K6B0.longitude = 73.095;
	[stationList addObject:K6B0];

	VXReportingStation *K6I2 = [VXReportingStation new];
	K6I2.stationIdentifier = @"K6I2";
	K6I2.associatedCity = @"SPRINGFIELD";
	K6I2.associatedState = @"KY";
	K6I2.latitude = 37.635;
	K6I2.longitude = 85.2417;
	[stationList addObject:K6I2];

	VXReportingStation *K6L4 = [VXReportingStation new];
	K6L4.stationIdentifier = @"K6L4";
	K6L4.associatedCity = @"LOGAN";
	K6L4.associatedState = @"WV";
	K6L4.latitude = 37.855;
	K6L4.longitude = 81.9147;
	[stationList addObject:K6L4];

	VXReportingStation *K6R3 = [VXReportingStation new];
	K6R3.stationIdentifier = @"K6R3";
	K6R3.associatedCity = @"CLEVELAND";
	K6R3.associatedState = @"TX";
	K6R3.latitude = 30.3578;
	K6R3.longitude = 95.0069;
	[stationList addObject:K6R3];

	VXReportingStation *K6S2 = [VXReportingStation new];
	K6S2.stationIdentifier = @"K6S2";
	K6S2.associatedCity = @"FLORENCE";
	K6S2.associatedState = @"OR";
	K6S2.latitude = 43.9789;
	K6S2.longitude = 124.109;
	[stationList addObject:K6S2];

	VXReportingStation *K77M = [VXReportingStation new];
	K77M.stationIdentifier = @"K77M";
	K77M.associatedCity = @"MALTA";
	K77M.associatedState = @"ID";
	K77M.latitude = 42.3164;
	K77M.longitude = 113.334;
	[stationList addObject:K77M];

	VXReportingStation *K79J = [VXReportingStation new];
	K79J.stationIdentifier = @"K79J";
	K79J.associatedCity = @"ANDALUSIA/OPP";
	K79J.associatedState = @"AL";
	K79J.latitude = 31.3083;
	K79J.longitude = 86.3922;
	[stationList addObject:K79J];

	VXReportingStation *K7BM = [VXReportingStation new];
	K7BM.stationIdentifier = @"K7BM";
	K7BM.associatedCity = @"BALD MOUNTAIN";
	K7BM.associatedState = @"CO";
	K7BM.latitude = 38.7992;
	K7BM.longitude = 106.218;
	[stationList addObject:K7BM];

	VXReportingStation *K7L2 = [VXReportingStation new];
	K7L2.stationIdentifier = @"K7L2";
	K7L2.associatedCity = @"LINTON";
	K7L2.associatedState = @"ND";
	K7L2.latitude = 46.2206;
	K7L2.longitude = 100.246;
	[stationList addObject:K7L2];

	VXReportingStation *K7N0 = [VXReportingStation new];
	K7N0.stationIdentifier = @"K7N0";
	K7N0.associatedCity = @"NEW ORLEANS";
	K7N0.associatedState = @"LA";
	K7N0.latitude = 29.9525;
	K7N0.longitude = 90.0825;
	[stationList addObject:K7N0];

	VXReportingStation *K7R3 = [VXReportingStation new];
	K7R3.stationIdentifier = @"K7R3";
	K7R3.associatedCity = @"AMELIA";
	K7R3.associatedState = @"LA";
	K7R3.latitude = 29.6931;
	K7R3.longitude = 91.0986;
	[stationList addObject:K7R3];

	VXReportingStation *K7R4 = [VXReportingStation new];
	K7R4.stationIdentifier = @"K7R4";
	K7R4.associatedCity = @"INTRACOASTAL CITY";
	K7R4.associatedState = @"LA";
	K7R4.latitude = 29.7958;
	K7R4.longitude = 92.15;
	[stationList addObject:K7R4];

	VXReportingStation *K7R5 = [VXReportingStation new];
	K7R5.stationIdentifier = @"K7R5";
	K7R5.associatedCity = @"CAMERON";
	K7R5.associatedState = @"LA";
	K7R5.latitude = 29.7833;
	K7R5.longitude = 93.3;
	[stationList addObject:K7R5];

	VXReportingStation *K7R8 = [VXReportingStation new];
	K7R8.stationIdentifier = @"K7R8";
	K7R8.associatedCity = @"SOUTH MARSH 130";
	K7R8.associatedState = @"OG";
	K7R8.latitude = 28.3;
	K7R8.longitude = 92;
	[stationList addObject:K7R8];

	VXReportingStation *K7W4 = [VXReportingStation new];
	K7W4.stationIdentifier = @"K7W4";
	K7W4.associatedCity = @"BUMPASS";
	K7W4.associatedState = @"VA";
	K7W4.latitude = 37.9667;
	K7W4.longitude = 77.7444;
	[stationList addObject:K7W4];

	VXReportingStation *K7W6 = [VXReportingStation new];
	K7W6.stationIdentifier = @"K7W6";
	K7W6.associatedCity = @"ENGELHARD";
	K7W6.associatedState = @"NC";
	K7W6.latitude = 35.5594;
	K7W6.longitude = 75.9547;
	[stationList addObject:K7W6];

	VXReportingStation *K82V = [VXReportingStation new];
	K82V.stationIdentifier = @"K82V";
	K82V.associatedCity = @"PINE BLUFFS";
	K82V.associatedState = @"WY";
	K82V.latitude = 41.1531;
	K82V.longitude = 104.13;
	[stationList addObject:K82V];

	VXReportingStation *K87Q = [VXReportingStation new];
	K87Q.stationIdentifier = @"K87Q";
	K87Q.associatedCity = @"SAN SIMEON";
	K87Q.associatedState = @"CA";
	K87Q.latitude = 35.6667;
	K87Q.longitude = 121.284;
	[stationList addObject:K87Q];

	VXReportingStation *K8A0 = [VXReportingStation new];
	K8A0.stationIdentifier = @"K8A0";
	K8A0.associatedCity = @"ALBERTVILLE";
	K8A0.associatedState = @"AL";
	K8A0.latitude = 34.2289;
	K8A0.longitude = 86.2556;
	[stationList addObject:K8A0];

	VXReportingStation *K8W2 = [VXReportingStation new];
	K8W2.stationIdentifier = @"K8W2";
	K8W2.associatedCity = @"NEW MARKET";
	K8W2.associatedState = @"VA";
	K8W2.latitude = 38.2144;
	K8W2.longitude = 83.5856;
	[stationList addObject:K8W2];

	VXReportingStation *K96D = [VXReportingStation new];
	K96D.stationIdentifier = @"K96D";
	K96D.associatedCity = @"WALHALLA";
	K96D.associatedState = @"ND";
	K96D.latitude = 48.9406;
	K96D.longitude = 97.9025;
	[stationList addObject:K96D];

	VXReportingStation *K9A1 = [VXReportingStation new];
	K9A1.stationIdentifier = @"K9A1";
	K9A1.associatedCity = @"COVINGTON";
	K9A1.associatedState = @"GA";
	K9A1.latitude = 33.6322;
	K9A1.longitude = 83.8494;
	[stationList addObject:K9A1];

	VXReportingStation *K9A5 = [VXReportingStation new];
	K9A5.stationIdentifier = @"K9A5";
	K9A5.associatedCity = @"LAFAYETTE";
	K9A5.associatedState = @"GA";
	K9A5.latitude = 34.6883;
	K9A5.longitude = 85.2903;
	[stationList addObject:K9A5];

	VXReportingStation *K9BB = [VXReportingStation new];
	K9BB.stationIdentifier = @"K9BB";
	K9BB.associatedCity = @"WELLS";
	K9BB.associatedState = @"NV";
	K9BB.latitude = 41.1197;
	K9BB.longitude = 114.926;
	[stationList addObject:K9BB];

	VXReportingStation *K9D7 = [VXReportingStation new];
	K9D7.stationIdentifier = @"K9D7";
	K9D7.associatedCity = @"CANDO";
	K9D7.associatedState = @"ND";
	K9D7.latitude = 48.48;
	K9D7.longitude = 99.2364;
	[stationList addObject:K9D7];

	VXReportingStation *K9F2 = [VXReportingStation new];
	K9F2.stationIdentifier = @"K9F2";
	K9F2.associatedCity = @"FOURCHON";
	K9F2.associatedState = @"LA";
	K9F2.latitude = 29.1167;
	K9F2.longitude = 90.2;
	[stationList addObject:K9F2];

	VXReportingStation *K9K7 = [VXReportingStation new];
	K9K7.stationIdentifier = @"K9K7";
	K9K7.associatedCity = @"ELLSWORTH";
	K9K7.associatedState = @"KS";
	K9K7.latitude = 38.7503;
	K9K7.longitude = 98.2292;
	[stationList addObject:K9K7];

	VXReportingStation *K9K8 = [VXReportingStation new];
	K9K8.stationIdentifier = @"K9K8";
	K9K8.associatedCity = @"KINGMAN";
	K9K8.associatedState = @"KS";
	K9K8.latitude = 37.6689;
	K9K8.longitude = 98.1236;
	[stationList addObject:K9K8];

	VXReportingStation *K9MN = [VXReportingStation new];
	K9MN.stationIdentifier = @"K9MN";
	K9MN.associatedCity = @"ROCHESTER";
	K9MN.associatedState = @"MN";
	K9MN.latitude = 44.0197;
	K9MN.longitude = 92.4831;
	[stationList addObject:K9MN];

	VXReportingStation *K9V9 = [VXReportingStation new];
	K9V9.stationIdentifier = @"K9V9";
	K9V9.associatedCity = @"CHAMBERLAIN";
	K9V9.associatedState = @"SD";
	K9V9.latitude = 43.7661;
	K9V9.longitude = 99.3211;
	[stationList addObject:K9V9];
}

@end
