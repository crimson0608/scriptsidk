local X=string.byte;local E=string.char;local T=string.sub;local H=table.concat;local n=math.ldexp;local R=getfenv or function()return _ENV end;local W=setmetatable;local D=select;local C=unpack;local V=tonumber;local function o(C)local U,e,A="","",{}local I=256;local Y={}for l=0,I-1 do Y[l]=E(l)end;local l=1;local function X()local U=V(T(C,l,l),36)l=l+1;local e=V(T(C,l,l+U-1),36)l=l+U;return e end;U=E(X())A[1]=U;while l<#C do local l=X()if Y[l]then e=Y[l]else e=U..T(U,1,1)end;Y[I]=U..T(e,1,1)A[#A+1],U,I=e,e,I+1 end;return table.concat(A)end;local Y=o('25126I27526H26N27526I24A23T23V23Q23Q26H26M27923R23V24E23M26H26K27924823V23O23Y23P23R26H26G27925124T26H26H27924N23N23O28128323V24228727524K24F23R27X27523U22F25M141E24R28227927W27923P24927G27923Y27K23Z28B26I25N25C24E28U27523M23P24F24827727924E23V23S23Q28Y27O27528524923Z24829326B27924D24823N24E23Z23W23N29F26H26X27924K23P24E25523V23R23Z25529L24C29L24925G23K24923P28627H27523X2A528Y26827924T23Z2A32A923N23T28Y26927924I24E24E24A2A824824C2AT2AM27924G25524L24K24V23O23T23P23Y2B627525A2562542AQ29823O29L26H26A27925A23Z29F24A23P29M26H29O2752BE24829724E28528Y2AI26I29Q23V24A2942C923V29S2BQ27924J24924M23P23V2BG23Y28Z2492432862AW27529K27S24823Z24B24F23Z24929326L27P2CZ2D12D327N2A02A223N23W24326H2D52AJ2AQ23X23Z23O24C2BZ27924U23N2492C223Y24J24U2DG29P23Z23S29623P23L2DX27525623Q23V2432AB26H2CU26I2CL27C23Q2E62E82BP26C27924P23M23V27Q23T29T24824R23Y2CO2E426I24P2AG2BO2EQ2EW2B22B42AU26H26E27924O24V25A24R25124S25V2662632FH2662EW2EY2CY24T24F23N26H2EK27524S28523Y2FT2482D32EM29W2CP26F27924A2C323R24A24E24L2AA2482E72DF2AN2752FZ23Q23Y2ET2EV2C026I2EH2E92482FN2FP2F72752592CF24E24S2BX2GG2CP2FR2ED2CM23Y28523X25523T2CY2DL26327926I21M22Q21526I24O26H2G22752CL2CN2H52H72H92862782FS27Q2A62F62792HM2H423O23X24S2HU2C727925523L23N2CC2GE26I23Q2H32D329R2I02EW2AY2B02AP29324S27923M2AZ24A24925S25H25H27Q24D25G23X29S23M24F23S24F29K2482BE23O29T2J725G2BE23R25H25524F24A24O29D23Z25H24Z24O24R24I24L25625624V25425H27J28525H24S24F27E24J29T23R2AC23Q24F23V2EW2582DR23N29E2BH26I2BT24224E24O24F2AZ2AG2DA2E52EO2DL2932EC2GN29L25529C24E28T2BR2E52CY2D323N2DK29A27525827D2D12HC2L92CD2GN2DO2GF2AG29V2482A62992C824D2EO28626O2F824325M24P2CY27K23N2AA24I2BU23Q25O24R23O23N2A62CL2GA26H2IA2KU2EO2ER2GQ2F22AQ2FL28Y26Y2I52DL23Y2A12C529V27C2C52KL2HS2KE29S29X2H124Z29724825M2IC2EF25M24N27U2CD2KF2932LO27524O2LQ2M12M323Z2M529L25O2LS23Z2LU2LW2LY2CH27524U2982LU2AG2L927525Q24Q26H2IM2952IP2IR2IT2IV2IX2IZ2J12J329L2J62J824E2JA27U2JD2JF2JH23S2JJ2JL2JN2JP2JR2JT2JV23O25H24R24A24A23Q24324H24823O23Q25G2K52K72HK26I24R2KJ23P24J2DM2KA2KC2L427A2CF2FX2PC2DK24E23X23T2KM26I24E24324A23Z23P23W2NN26I23W24F2BD2MP2862KY2PM28S24E2IF23X2EW2PH23W2DL2DN29H26I2DS29R2G72PL24P23Q23N2KP2PC2BG2J22Q52GL2PH2G42A228S2NT26I26U2NW2EC2PH2JF24C2L72D22CD29V27S2EB2792BL23R2A223Z24V2AA2J72FQ2R823Z2RA29T2JY2PX23N2KL24H2IN2O02IS2IU23V2IW2IY27L2O62J42O92KP2OC2JC2JE2JG2JI2JK2JM2JO2JQ2JS2JU2CF2OP2OR2OT2432BL29K24E24I23P2E22P02K62QU25O24Q26I25D26J2751O26A1Q1L2382KY1S26I2SZ2372791P26Y2MH22R2MH26I1O26Y2SZ2382TC1P26I26226I22T2791S25M2TG25M2751T26A2562TM2KY1G2TQ2T02TS26I1H26Y23U2TM2TI26Q2TS23H26Q2752TP2TR2TT26A24A2TX2751U26Y22Y26I2332MH22Y1R2SY1L23A2BR22Y2UE2U12TT25U27523F2V126I1S24I2SZ23D24I2751H27923I2791K2562V82TW26I1824Y2TG24Y2751925M2162TM2U21C23M2V823M2VP26Y2UA2TC2VQ1A2VT2751D27923B279102UT2T12751626I2MH22U27522Y2T827523G2TC112W026I23H2TC122422MH22O24226I2UR24A2SZ23A2UI22Y142422TG2WY26I152V126J22T2V421L2TC2WN27521P2U223G2U21526Q2TA2UC26I1422Q2TG22Q27521K23E2V823E27521O2362TG2362XJ24I24Q26J22Y2VA26I21G21U2V821U2XJ2U92WR2XR21P24I23U2YA2YC21H2XH2TC21P2XR2302XR152WG26I2352791626A2SS22U2UW1P2XR23G2XR1P2KY23G2KY2WL26I2XI26I1P2XL2U21422A2SZ22422A2WE2T926I22U2UQ2Z82WM2XR142162ZP2VS2XS1Y2TG1Y2752XB2222XD2V421K2U02372XN2WQ2WS310826A2MH2272KY1431052T031072XA25U310A2XE2XX25E2T525E3108310H2TC15310K26I310M2751421E2TG21E310J310L310N2Y42T02Y6310S2162YA2V41531112WE1Y26D26I22S1Y1L2451R2161L2UU311X24514122TG122WE2U222S2TS2UR26Q2X22UC2X531232T03125310S1Q310B31171Q2ZP1Q2752US2X22UW141I2TG1I312L312N31172622T52TL2XS26I1R1L22426I2SV1426A31352T12SV31132TS23E2KY2XB25M26G310V26I1624A22226I2212X41R2VW2UU2VY2X5313B2T026A313E26A313G313I25U262313L2V41624I313Q2212VA2UR24Q2X22SS2X5311F238311H2XB2Y922Y2V421O25M313523D25M313E2YJ2UB310825U2563148314Z23U3152310S24A26G314P2Y225U2T5311L2XP26I22R2ZZ313Z313D2XA314326I313H314Z22Y3155161I23J26G2331I26N2UR1Q1V2UU1Q315X14314K314M25U314O314Q256314T256314W2UA2YX25U22I3158314Q23U314T2YO26I21D2KY23B313I25M2UA2U221L25U21M315521L24Q315722Y2SS26I21C314G1L237317321L315E315G2XX3165275316Z24Q313L317924Q315122T317321O2V731772YC21D24Q1A317I27521D2VH31582VJ2142UR1L23D22Y2SV21822Q314T22Q2SV21D316S2WR2U221H317T317V26I21H2VM31582VO26I21823E314T23E2SV1W31883183318A318J318D23H2U221525626226H22T2VJ21523U2NW22T2U626I31982563195319C2192VY26I232319J1W22I313C22I2SV210317E26I2112422CC22Y2X922K216314T311J319U2YV2XR1X26I2TS21S2791X3114311626I1W31192T0311B26I31AC311D2751X23U23E319G2751Y21E311Q22S21E311U1R21M311Y23A31B02451X2YC23G2YC21123U22231AR26I22H316P2KY1X317B2XR31AG311A31AN31AD31BG25622I31952VJ31AT26T26I22O31AX311V31B02UU31B31X24Q216319531731X24A21M31952UI31AK24A1A31CA27521131C331C531CG24231C922T2X92111Q1R26H21V312J319U31B62YC22H2VO26M22T318N2112ZT2TB27521031AH23831AJ21131BN31CG24Y31BQ31D127521221E31BU31BW31AY31BZ31B2311U31CH31C4317M31CK31CM31CO1Q1B26I23F31CU2102VH31772VJ21026A1O313626A27X21026Y31E72TH27X22G26Q31E723D26Q27X31D32TA2TC319S2Y531CK314O319Z25M31EI313K31A4316E31CK25626M319Y27522K26231EI314726I2292TK26I2VE27522925U22W26M21V25U27X22924I22031FH24I31FK24Y21431FH24Y31EL25M2TA2U2210310P238310R319V310U2X922G2VM317731D2311N319U31DC26I210319O2T0319Q26I22G319T22H22Y319X2UN26I22823M31EI23M27X22H31A531CG31A826I31AA31CG31GC31E5313C314131GB314431CK1A31D02X921231FU311R31FU2UR25631E723A315122Y2112VD27922G24231ED24227X22K22Y31ED315P26I22L2KY22V2KY22H26I2SS31H0313431A1311Z2YA22422Q31ED22Q27X21T313Q2ZH31IH22531GA22623625N26N2332362YA1R318Q2UU318S22Y22423631ED23627X21S22231ED22227X21X31IH23G31IH21T31GA21T22I25626N22T22I27531IK2W127522624Y23V31IP24Y31IS316A2UU316C31IX22A31ED22A27X22521U22Y31JH2YH26I31IG2WM31IJ31GA31K227522Q31K622625M23F31IP314V312A313523A26Q31IA31HQ2T031HS31GZ31JY2T031K031K722I22231JH31JJ26I31J831K927531JC2752302TC22531I431GZ2791R31302UU2TL22Y2342X731KR27523521M313822T31LO26I2392X923G2X922W31IZ311G27X231310R23G310R22X2TC31L831LM2YZ2Z131JK31GY22W31LD22I31B131MF24522431LK2382X931K222I31K531L531LU2X921W1A31EI317U26I225314X2XR226319J22S313X1R23U2X22U631IX31MK31MM21U31MO22T31K621T31MR27521W1231EI1231K131MZ31JN313222S31LH1R310X2UU310Z31IX2WC2KY21U24Y2WH2VO2WK31J931KA31EN27531I331JN31LD2TF2UU2UQ22D27922627931I32TS31MD312P25M1K2UU31ON24522G31GF23831GH22K319T22L22Q319X2XW26I22C1Q31EI1Q27X22L31GW31BD31GY31I631BE31AM31GI31NY31F3313V237319J22H31D431EO31D831AJ22G31OC2TH31O822Y2TL22T31GO22K23U31EI315431GP1I31EI1I31GU31P931HM2MH31MA31GD31PO31H131H726I212312731291R312B2UU312D31E52TG2KY22G2X1317731CB31EM315F2TC1R22A31B131QY2452ZC2752232KY311Q2752P32Q62DJ2Q928Z24H23Z2DF31R626I27J27J2492E824923M29S23P2432972M72792IC2CN2IE2H52CD2AK2HV2DH26I2II24A2IK2NX2RQ2B02O12RT2RV2O52J22RZ2AG2OA2S22OE2S52OH2S72OK2SA2ON2SD31SL24P24P24U24I2602622SO2K731S12F32B526G2HW2N92FA2FC2FE2FG2FI2PT2552J024E27T24D2AH29P2GV2QU2722SS25Q2792SX31QO2752ZC31QE2TJ2TS2TN2751Q24Q2TL233314I1R315B2UU2V131HV2U02382U21S31NU238310Z26I2TU31N82KY1K31U323D2V41T31P931TT31LC31TQ31GC1R2YF2UU2YH31HV31PG2ZJ315L315N2ZJ2WZ2TM2791Q2562Y12212TW2UR317P23A314E31TO314031UQ31TS31V231TV2T425E313Q23331NW1R2U023A312931VE2WD31UY31VH31TU31V43146313R31U531LE2X231LH1O31UB31UD2TJ31JJ31GO2ZJ31PM2SW31N62T0319C1S313V23D319J2T831O731342SZ3161311U31R226I31R42NT2QB31RY2AL31RS2752IK31T02F52EC31S331X12KD2B82BA24U23Z2BE2BG2PT2LT23Y29V29X29Z28C2A22A42A62F32AB2AD2AF23O26I2EC31VT2ZF31GY31WA1G31QK31EJ31TQ31NO31V1314I2791G31W62751K31LF23D31322U431L72TI31PB2T727931LA31UQ31R32Q027926P28P2HC31WW2HV31X32IP31X531WY26I31X724K31X931XB28Y31S131S331S525K31S72IQ2RS31RZ2D225G2C329E23P24231SH24C26325H31ZA24925H26H25P27925H2J42GA31ZM2562J12QI23T25X2AF29M24L2482BG24825Z24R2DS25O2QI23R29S25Z263262319425H31ZQ31ZS2AB25H31ZV29E2AT31ZZ2BX2G8320329L32063208320A320C320E26225O23T298320025Z2RG2752BO2KG25623V2DK24P32122BX2CD23O2JZ23Q28G2QU2PC24A2PE28T2C828W29C2PT24E2Q22Q428Q29I2CP2Q0321T321G23R2OH29931S12OT2E831RX321J27Z28Z28D27V2MR27B27D23Q2QU1Q25X26J26J2PC29C2PB2QB29J29L2932LK31TI2NT2NV26I23L2791T2792312791U23M2MH23331N431WE23A31N81S31PR2TC2TU31PV2KY2TU314I31UH323E2751L26Q31V92XR1C31YA3132112KY231310N31UJ2V41D25E2UI22031UD323O31L72XR323131A92T72ZD2KY31N531N72WZ323D2TG323F26A323H2UG323K31Y8323M26I323O323Q275323S2V8323U323W310N317623D3179323227932412UN3244323N31P9324931UP31UY2WM2T22UT23D2KY2VC2Y131VJ1I317322S31U131U323A31U5325H31V32751I31VL313R31VO31VQ3129325R325J26Y31JJ2212UQ312Q2UU2UW32602792VC31MB2751G31WE23D319C1K313V238319J1926I2W431VJ1L26Y2SS310I31341Y31KM1Y2YA21L31BF2Y231NA317W2XC313M21P31GA1T31CW2Y22XU2T031P121D25U314V327531GA21C319T317X2Y9319627521Q24A22326I22X24A31IS23M31KM23M2YA21O326J319J21D2TC2312YT326R2WR31QW22I2X231W91I25U2VS22131W131LF23A31LH1W3272319U319J23G319J1X31GA1U2422W422X2WY2X02X22X421L2W831LD323A31N8318U2XV31CG2XR23131A631GA210327B23831P122H328O319J31D331JM26I1Y310X31LS325X2X231291W31UT23831K62121I320H22U1I31WQ32842U8275329A31AN31GA2U42YO2342YT31MC31LD26231B132AF24521M319W26J233328X1R31QR2X32WZ21O31012T031032YM318S22T317R32A327521H324C2YI2XQ2Y221M2TG31LR21P31GC21O329U31K6311B2TS2WI2WZ2ZG328531YK2ZH2KY327631WM21O32B72T031LR21C31AH23D31AJ32BO31QV323N32AD312P26Q31OO31KN1K31R12KY31WT26I321J2C82EW2BG23Q31XG28Y31XI26I2ML31XL2A72A931XO2AE2MQ29B29D29X322Q23O2J424E31XS31TN31UX324H31832TI31WC31V127531FC32D531MX31TN31QK2382ZB31LB31VJ323132A5326A324X31Y132B5325B31WS31YM2752GL2LD2C929R29T32CG29Y2DB2A32AL31XN2FX31XP2KL2C831ZA31YW31X02AS31X22AX31YU32E831X62B92BB2BD2BF2I42752LL2CG31S12PH2DK2DM321W26I2DV26I26Z32CZ31TP2V531OC23D2TC31XY2TG2XR2U4314I2TC1831NU23D31UD1H31Y232A92WZ2W232522VB31UN31M931TN31U32382V42ZC31PE1O3176238317331TR315M323I32DJ2ZJ24I2MH23F2YC31WR32C92HC321J2CD32EK293322E2EF322H2IA31XU31VG32FV31TW31UD22S329Q31OP2WZ2TE324I2UK1I31BU32A031WQ32FG31WB31WM1R31MF2UU31MH32G32KY2SV27532G62IA2BJ2BL24E2BN2BP2L92Q032GE31UY31PE2TJ32DH31TW2WQ32642WZ32662UV32GM31UX32FO31152ZF32C832DO313828P2Q02BT2BV320Q26I28O2TD32HQ31GC32H12NT32DQ322U29S2NT24Q24W2NW32E431WX2IA32E72B32B526H31RG32HZ23Z2BW29M31YV32HY2BU32IP32I128H28J28L28N31S12KS2PF2EC2EE27D32J226I2H132HE32D132EZ31TQ32D41O32DB32DD31Y4326D32F831W731Y22TJ31N831Y5323Z31Y832JG32572UN22T2XR323O325I2ZB31FW315F2U232I72L92H12R72CV2MJ2CY2D02D229332I325B2GB2PL24N2AQ2962CP2C825624L25525A2IH2NJ320428T2GS2EX31SF2KP25J25A2PO2MG2792CB2OT2AT2NR2OP32CP31TG2N92BF2DF32IG2HV32II2AQ31YV31YT2B031YV2IA31YY2BC31Z12EW2S02RF321Z321U2H526G27031Y531UX1L31LB32D7326Q2V22TC323O2SS21V2XR326M2MH32D7192622UI21V31321L25E2SS23F31UD18317P2382YC2VQ313Q22Y2U21031G723D318N1931Y22VQ2VS32MS275112YZ32D71431QR23831CB326Z325C3110329L1123M2UI23F326L31Y21L24Q32MJ317331YD26I2362TC326B31K7324B31YL2NT2IA32G7322V32IC31YR2KD32IJ2F431Z227932J228T32J423P2EF32J231T326I2GU29S2GX2482GZ2PT2JH23T23L321M32ON31YW2GZ2GJ23Z2CP31S12EY23O2F032CX2TC32I432EW32JB32D331WM32JF32F231TQ31LB31XX32JK31Y131EY31V12U631VJ2TJ2X431Y5324Z32FT32JM315M325S31V132MR31Y52T431772T731BI32BL32C932H326I27228P32I32CJ28N2C825A2SM27F2C824K31WX32292802Q02K12RI24S2EO27V2QB2ML2DD2DF32EM31RA32EP31S124D2DZ2E12E331YQ32LS31RW2IG32LD32O332LG32EC2EW32O832K62H232OC2GC2BP26R27925M24L23S29C2C623Y25M2492PP23T2DD2QJ32RJ29S2RI25M28Z25M25Y2NW2GL2DQ2DS2BX2DU2DW32PZ25W32NZ32IB2NT322J26J31ZP2TT2YZ31WA1K32EY323F31Y21U31H522S31412UR31342UU313822Y323131PV31Y531U72U22U42TW22T2TC1U1A2TS22X2W42UR31AH23A311B2UX31LF23831321G32FL2V41H31UZ325G2UM2U731Y8317P2V92751831E22382VJ1C31G7238318N324132N131UD1431WI319J1D31Y23241326O31UD324131PV31UD1931GA1C31LK23D2X91032TR2VJ1432SV314Z32SY2V42WP329L1422Y2V831GO21K32TF317F32TI317F24Q26Y2XD317N2XZ31832Y1324Q26Q2Y1220324832PW2V5319T1G2222V831IH1T32D432K32HC27128P2QB2PN2PP2PR2PT2P82D327R2F532QA31WX2EC24V2482C32482562G52QF2GL2QH23V24924932QB2HV2MR2I231WX2H12FT27S2FW2FY31RN2GH32OE32W232W432KH32WC321A32EI2CE2CG32Q623Z2KG2PC24M2JI32Q92792R532KK2792I732OQ2C82J62862QB2CY23K23P285322I25X32O232E632R332IK2F532IN32IU32IQ2AR32XP28Y32IT32I029M27928I28K28M32R532RA32J32HX32OB32J632Y526J2642TO31UX32NT23G3230328S22Y25N2UO31852UR24231KM2422YA32SS32PP323524R2UO327Y2UR316K2UU2YO32SR2GM32YT32192UO31JW1R24I31KM24I32YR27A31V231Y832PL2VP327031UE318Z2U21G32MN2YC32TH31PE32TH313Q22T2KY1I21E31OF22131BX31AZ31B131B332ZR2UJ2U326Y32N132F632U232FH32PE1I23U2WW31N81R31G723A31O3330332ZT2VB330632FE32TP31QR23D31CB32FB330B2622WW31NS31NU23A31NW330K32TJ330732TP32UF2X9330T2YK325T2X922S32AN32AP2X432ZM2TG2YC1K32UT318331GO2U431WM1G329E31P12U431KK32F6311F23D311H3317314Y3305314O32F631UT23D31K61C331P2W625E31KK32U0328A318331L132U432PE3241327U22T32FA32K022R32K232HU2NT31R832R132XN32XU32O532DW2L523N29M2K623Q2P824A2KJ24N27R32WV29932Q12752A827S2N32O72KI2KK23O2RD2QK32P124R23S2AF2K529T25628S29S2RN28632PZ24Y32OE333J333L2KJ2A723N24023Z2QU31I426H32PZ24Z2QU25W3173321K2C823O2AG334232S8322K320H2UD31UX2TU312931UH31XZ32VC32PE323J2WZ2KY32LZ32SY279323O32PG32M832ZD31VJ2VQ32PG2U22VQ2UN21W2U232M526I22Z334Z334V2VP25M325I2U22W72UI31VJ3241325I32U825E335632UB25M2TW22Z335425M313Q2342VU32MV318N323V275316Q311731WE238319C21K330931UE32V1315F31731S334K315L22Y334N2V8334P331831UE2Z4334S32C0335D32V8334Y2VP335027933522W526I335526I335732572SS335B336T336Q2VQ335G2W6336U3327335M3327335P335E335S335U335W335Y2V83360329233642TG336733691T336B22R32FT332N32HC28P2C82C532XB31TH2CG2H12CJ31X92DS2MJ27R2G82PS332Q32LF332S32IL2GL2592BX23L32RL23V32E927532QG23R251255321M31TF2492QU326R26J25O32YD32EW334L32GG26I1G324P32ZP32HS2VB31FA31WA1832UM336Y335R2WZ32MT323T2VP32MZ25M335J32SW31Y2325U2WW32GK31VR2WZ1G32YE32UZ33052MH22P2TC21M22Y320H31K331AY24231B133A42451Q2YC22S314E1R317623A314I2VC31LH279339A2UF339C31V9339F324V339H32PE2VQ339K330A336L328D2WW328H31W3339R339T31QE331M26I339X27521M315L23C2UW1R32PT23A2WJ32NT23J32DI336232TJ2752222TI337V2HC2Q0321L321N321526I2PH32XD31XA2PY321O27932E5338C31YV32J132Y532O932Y732R92EI2992MR24J23Y29F32OV2DP2DR32CS334232P132JA324P32F12T032F3328722Y32F632PC2U332FC2U532TL3305335J323F31M631YF31I531LD2UT32HO22Y1D25M2UN32N226I1D32VL32C1313431AX2UU31BX32VM27932CC2MR2QM24F2Q532KU33BT2AG32VW2J728T322E33BQ32GA322G26I31RG32HE31UO32DF32GU2T8329L1S32JS2U327932YG2TT3287326T31QJ312C2WZ10339B315R32GR32A131R132GU2WP31WM325931OL326U31B1311T32C732NW32HW27533DK28V2DZ33DN32R72SJ2J633DS32CX334G33432SS2P333E131GY33E332HI3392334O325727523232JZ31FX2SW32HQ33FE323032GU2TZ2V833582XR33FL31TQ332K332M33EX2HC26V337X33BY31WX33C2338K23Z33CA32Y032IY32Y333C032R433G72GO33C42HL32Y82EG32Y532DR2EM2EO338K2ER26H32P124I28E27R32XI23Y2542SM24E32192BY2QB24P32WH2HV32I32BO24D26I22624B21U21H23326Q2492SS1323U1N2391924M325M31BD1522O1A1525T2222VS22X1X26R24Q21W24P1431OF1Z26125525121S23S24W22C32I224I2302452331W21Q25X311523H33HX22U23C25O25W32XK26I25U25X2731A21O24X24C33IT26H33IG33II33IK31OF1F2541G25X26F23U24F32S532IA33F832HC2NW2IA2CL32QT24832Q72FX23P33BR32WK2FV332W32WN2G02CD33GZ2A22PL2R923P2AA31YW25B2OS29L33JP2AF2PC32OG2D326I25032EV31VF31V131VX31TW1Y2602UO1Y3158311W31HI216315833FD32JI339233CR2Z832PE32JN32PP32PI33L131VI31YH325I338Y33KH334R336H31Y833CR31UM334Q26A32PG32FW335J32FW32JU2TY32ZN330M32ZS2TC1K335Z32TP326F319C2VV2VX27510330Q31CB2X62V82X921K331J3184327A2V831P121C32V523D32V721G331U311H21432VH318331IH218332231K61W33LZ2VB23M2UA319J32782TS32G12UD332B31OU326D2ZO31832ZR31UE32D4336E338Z336N33LA26I1K33LC31Y231UF33042TU33LI2UG3185330L336M31IW31UH32BR23D31LR33LD336L1U2VJ22S31V932Z82X2314E33N633L833N831UH33NC33LE33LG2UG33NH336M33NJ32FW310U32FW319Q33N932VK31WM33O031VU33L933O32V831UD33NR331Y33NE33NK33NG33NF26A311J33OR26A33NM31Y8312F23D312H33OO2XR33NT27533NV32HM31VB33NZ336F324N33NA33O4336L33OQ33LH33OT33OV32FW21M2XD33OD2YA323I33N533MY31L11G33N123D33N333OG32BZ2V533PB336O33PD33OM2TT33ND33LF33OT33O82TU33LK2TT2YC33MW32DM32G427931BU27632QD2PC338N338T3343322B28E31T232QP2PI31RB321J2DV32XM33GE32XV32IM2BS32XS320Q31YV32VO2BI33R129M32Q72EH2AU32VV29C2BD32O62E52E733RA33CD33RF33C733GI32R832Y933C732S633JI2HC2NV321F32X02D42RH32L427C32EQ31SS2CD32WE28Y32W92EN2EP33GR33GT33GV334D23N33GY33H033H229333H433H633RE26I25833BV2BX26128Z33H933IU23423733SS33SS21F32XL32W92LF332W2LI26H32EU2752LG31XA31ZX23L2BG29T2EQ321E2MR322O32CT2D62RA2AA26I23T33KG31VU33E231YH31KD31V41231TZ31252UR1A2X232T533KU32PP1Q1Y2TW22131072UR32AT23A32N11O32TB313232FU31V033L231VJ1Q22233U132MR1R311F23A2Y631HV32FR32FT32PO31XX31E223D2VJ33KY336L31W832ZE339233UO330M2VS32SZ31Y833U9323N339U323O335J2XR1833V0339C2Y133D910336932MY33AQ25M326O32K225E2TA31UD1O328M1S33M531GO31WL33PY1R1I31KM1I2YA1O332633PZ33N731TU33BI319K31QW31I833U62YA33D6327G2U21E31GH22S33OE31US31KM21U33WC316S2XD33WF236257313R31IR2UR31IU23A31IW33D626233WP2751E3185311R32YM1R32YO2UU32YQ33D525M33X022T33WF23M33WS22132YX31N531KM32Z133WD33X133DA32MI2XD31UD1E24I33XH32ZB314F31KM314O2WB32EW1126231TU323U313222Q31321225M2HB22131KK31QJ31KM31KO22Y1033VC33Y233VE3132336833LW26I1131Y233Y2326O33Y5316C22T33Y52YO33YW3108339J33XO21K32AT2383103316Z32AX317N33FI317433NO31LR21G33ZA21L32ZK315O335A32UP22A32NH33N310328M31182V831AJ33EP33PY1033TU2T02W42XA33XC33XO32UQ3288275122XR22S312D1R31OC23A2UQ10312F238312H15340033XE32N332D410312M2T0312O33YP31302XD3132313A32EW313J2TM2XF2Z92XR33YQ32DL33ZO2X8311733ZC340K31WM31UO33ES31VP32C431OQ33DI275');local I=bit and bit.bxor or function(l,e)local U,I=1,0 while l>0 and e>0 do local A,T=l%2,e%2 if A~=T then I=I+U end l,e,U=(l-A)/2,(e-T)/2,U*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then I=I+U end l,U=(l-e)/2,U*2 end return I end local function U(U,l,e)if e then local l=(U/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(U%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local A,U,T,e=X(Y,l,l+3);A=I(A,234)U=I(U,234)T=I(T,234)e=I(e,234)l=l+4;return(e*16777216)+(T*65536)+(U*256)+A;end;local function V()local U=I(X(Y,l,l),234);l=l+1;return U;end;local function o()local I=e();local l=e();local T=1;local I=(U(l,1,20)*(2^32))+I;local e=U(l,21,31);local l=((-1)^U(l,32));if(e==0)then if(I==0)then return l*0;else e=1;T=0;end;elseif(e==2047)then return(I==0)and(l*(1/0))or(l*(0/0));end;return n(l,e-1023)*(T+(I/(2^52)));end;local G=e;local function n(U)local e;if(not U)then U=G();if(U==0)then return'';end;end;e=T(Y,l,l+U-1);l=l+U;local U={}for l=1,#e do U[l]=E(I(X(T(e,l,l)),234))end return H(U);end;local l=e;local function G(...)return{...},D('#',...)end local function H()local C={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local Y={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local l={};local A={C,nil,Y,nil,l};local l=e()local T={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for e=1,l do local U=V();local l;if(U==1)then l=(V()~=0);elseif(U==0)then l=o();elseif(U==3)then l=n();end;T[e]=l;end;A[2]=T A[4]=V();for A=1,e()do local T=I(e(),243);local e=I(e(),130);local I=U(T,1,2);local l=U(e,1,11);local l={l,U(T,3,11),nil,nil,e};if(I==0)then l[3]=U(T,12,20);l[5]=U(T,21,29);elseif(I==1)then l[3]=U(e,12,33);elseif(I==2)then l[3]=U(e,12,32)-1048575;elseif(I==3)then l[3]=U(e,12,32)-1048575;l[5]=U(T,21,29);end;C[A]=l;end;for l=1,e()do Y[l-1]=H();end;return A;end;local function E(l,n,X)local U=l[1];local e=l[2];local I=l[3];local l=l[4];return function(...)local Q=U;local T=e;local o=I;local e=l;local G=G local I=1;local Y=-1;local R={};local H={...};local D=D('#',...)-1;local V={};local U={};for l=0,D do if(l>=e)then R[l-e]=H[l+1];else U[l]=H[l+1];end;end;local l=D-e+1 local l;local e;while true do l=Q[I];e=l[1];if e<=21 then if e<=10 then if e<=4 then if e<=1 then if e>0 then if(U[l[2]]==U[l[5]])then I=I+1;else I=I+l[3];end;else local e=l[2];local A=l[5];local l=e+2;local T={U[e](U[e+1],U[l])};for e=1,A do U[l+e]=T[e];end;local e=U[e+3];if e then U[l]=e else I=I+1;end;end;elseif e<=2 then local e=l[2];local I=U[l[3]];U[e+1]=I;U[e]=I[T[l[5]]];elseif e==3 then U[l[2]]=U[l[3]]+U[l[5]];else local I=l[2];local T={};local e=0;local l=I+l[3]-1;for l=I+1,l do e=e+1;T[e]=U[l];end;local T,l=G(U[I](C(T,1,l-I)));l=l+I-1;e=0;for l=I,l do e=e+1;U[l]=T[e];end;Y=l;end;elseif e<=7 then if e<=5 then U[l[2]]=n[l[3]];elseif e==6 then for l=l[2],l[3]do U[l]=nil;end;else if(U[l[2]]==T[l[5]])then I=I+1;else I=I+l[3];end;end;elseif e<=8 then if not U[l[2]]then I=I+1;else I=I+l[3];end;elseif e>9 then U[l[2]]=#U[l[3]];else U[l[2]]=U[l[3]]-U[l[5]];end;elseif e<=15 then if e<=12 then if e>11 then if U[l[2]]then I=I+1;else I=I+l[3];end;else local e=l[2];local T={};local I=0;local l=e+l[3]-1;for l=e+1,l do I=I+1;T[I]=U[l];end;U[e](C(T,1,l-e));Y=e;end;elseif e<=13 then U[l[2]]=U[l[3]][T[l[5]]];elseif e==14 then local Y=o[l[3]];local A;local e={};A=W({},{__index=function(U,l)local l=e[l];return l[1][l[2]];end,__newindex=function(I,l,U)local l=e[l]l[1][l[2]]=U;end;});for T=1,l[5]do I=I+1;local l=Q[I];if l[1]==20 then e[T-1]={U,l[3]};else e[T-1]={n,l[3]};end;V[#V+1]=e;end;U[l[2]]=E(Y,A,X);else local e=l[2];local T,l=G(U[e]());Y=e-1;l=l+e-1;local I=0;for l=e,l do I=I+1;U[l]=T[I];end;Y=l;end;elseif e<=18 then if e<=16 then if(T[l[2]]>U[l[5]])then I=I+1;else I=I+l[3];end;elseif e==17 then U[l[2]]=T[l[3]];else local e=l[2];local T,I={U[e]()};local I=e+l[5]-2;local l=0;for e=e,I do l=l+1;U[e]=T[l];end;Y=I;end;elseif e<=19 then U[l[2]][T[l[3]]]=U[l[5]];elseif e>20 then local I=l[2];local T={};local e=0;local A=I+l[3]-1;for l=I+1,A do e=e+1;T[e]=U[l];end;local T={U[I](C(T,1,A-I))};local l=I+l[5]-2;e=0;for l=I,l do e=e+1;U[l]=T[e];end;Y=l;else U[l[2]]=U[l[3]];end;elseif e<=32 then if e<=26 then if e<=23 then if e==22 then U[l[2]]={};else U[l[2]]=(l[3]~=0);I=I+1;end;elseif e<=24 then U[l[2]]=U[l[3]]+T[l[5]];elseif e==25 then local l=l[2];local I={};local e=0;local T=Y;for l=l+1,T do e=e+1;I[e]=U[l];end;U[l](C(I,1,T-l));Y=l;else local e=l[2];local I={};local l=e+l[3]-1;for l=e+1,l do I[#I+1]=U[l];end;do return U[e](C(I,1,l-e))end;end;elseif e<=29 then if e<=27 then U[l[2]]=E(o[l[3]],nil,X);elseif e==28 then U[l[2]]=X[T[l[3]]];else if(U[l[2]]~=U[l[5]])then I=I+1;else I=I+l[3];end;end;elseif e<=30 then I=I+l[3];elseif e>31 then local I=l[3];local e=U[I]for l=I+1,l[5]do e=e..U[l];end;U[l[2]]=e;else U[l[2]]=(l[3]~=0);end;elseif e<=38 then if e<=35 then if e<=33 then if(U[l[2]]~=T[l[5]])then I=I+1;else I=I+l[3];end;elseif e==34 then local I=l[2];local T=I+l[3]-2;local e={};local l=0;for I=I,T do l=l+1;e[l]=U[I];end;do return C(e,1,l)end;else do return end;end;elseif e<=36 then X[T[l[3]]]=U[l[2]];elseif e>37 then local A=l[2];local T={};for l=1,#V do local l=V[l];for e=0,#l do local e=l[e];local I=e[1];local l=e[2];if I==U and l>=A then T[l]=I[l];e[1]=T;end;end;end;else n[l[3]]=U[l[2]];end;elseif e<=41 then if e<=39 then U[l[2]]();Y=A;elseif e==40 then local I=l[2];local T={};local e=0;local A=Y;for l=I+1,A do e=e+1;T[e]=U[l];end;local T={U[I](C(T,1,A-I))};local l=I+l[5]-2;e=0;for l=I,l do e=e+1;U[l]=T[e];end;Y=l;else local I=l[2];local T=Y;local e={};local l=0;for I=I,T do l=l+1;e[l]=U[I];end;do return C(e,1,l)end;end;elseif e<=42 then if(T[l[2]]<=U[l[5]])then I=I+1;else I=I+l[3];end;elseif e==43 then U[l[2]][T[l[3]]]=T[l[5]];else U[l[2]]=U[l[3]]/T[l[5]];end;I=I+1;end;end;end;return E(H(),{},R())();