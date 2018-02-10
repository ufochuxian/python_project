.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$ACTION:[I

.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETMEDIAINFO:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETPOSITIONABS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field public static final enum STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;


# instance fields
.field private mArguments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnArgument:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

.field private mService:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

.field private mTag:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$ACTION()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIAINFO:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONABS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 10
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "PLAY"

    const/4 v2, 0x0

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Play:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$1;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$1;-><init>()V

    .line 13
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 10
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 14
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "PAUSE"

    const/4 v2, 0x1

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Pause:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$5;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$5;-><init>()V

    .line 16
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 14
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 17
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "STOP"

    const/4 v2, 0x2

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Stop:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$6;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$6;-><init>()V

    .line 19
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 17
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 20
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "SEEK"

    const/4 v2, 0x3

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Seek:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$7;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$7;-><init>()V

    .line 24
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 20
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 25
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "PUSHURL"

    const/4 v2, 0x4

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetAVTransportURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$8;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$8;-><init>()V

    .line 29
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 25
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 30
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETPOSITIONABS"

    const/4 v2, 0x5

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$9;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$9;-><init>()V

    .line 32
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->AbsTime:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 30
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONABS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 33
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETPOSITIONREL"

    const/4 v2, 0x6

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$10;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$10;-><init>()V

    .line 35
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->RelTime:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 33
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 36
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETTRANSPORTSTATE"

    const/4 v2, 0x7

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetTransportInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$11;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$11;-><init>()V

    .line 38
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->CurrentTransportState:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 36
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 39
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETMEDIADURATION"

    const/16 v2, 0x8

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$12;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$12;-><init>()V

    .line 41
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->TrackDuration:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 39
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 42
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETMEDIAINFO"

    const/16 v2, 0x9

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetMediaInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$2;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$2;-><init>()V

    .line 44
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->CurrentURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 42
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIAINFO:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 45
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "SETVOLUME"

    const/16 v2, 0xa

    .line 54
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->RenderingControl:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$3;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$3;-><init>()V

    .line 58
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 54
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 59
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const-string v1, "GETVOLUME"

    const/16 v2, 0xb

    sget-object v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->RenderingControl:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    new-instance v5, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$4;

    invoke-direct {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$4;-><init>()V

    .line 62
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->CurrentVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-direct/range {v0 .. v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;-><init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V

    .line 59
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    const/4 v1, 0x0

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONABS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETPOSITIONREL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETMEDIAINFO:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;Ljava/util/HashSet;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;)V
    .locals 0
    .param p3, "service"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;
    .param p4, "tag"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;
    .param p6, "returnArgument"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            ">;",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p5, "arguments":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mService:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    .line 80
    iput-object p4, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mTag:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 81
    iput-object p5, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mArguments:Ljava/util/HashSet;

    .line 82
    iput-object p6, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mReturnArgument:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    .line 83
    return-void
.end method

.method public static checkResult(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 4
    .param p0, "action"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 107
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v1, ""

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_PARAMETER_NO_ACTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_RETURN_VALUE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, p1, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "NOT_IMPLEMENTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_NOT_IMPLEMENTED:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, p1, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 120
    :cond_3
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->SUCCESS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v1, p1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 122
    .local v0, "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$ACTION()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 126
    :pswitch_1
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isValidPositionStr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v0    # "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_RETURN_VALUE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, p1, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 148
    .restart local v0    # "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :pswitch_2
    const/16 v1, 0x64

    invoke-static {p1, v3, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isIntStrInRange(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v0    # "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_RETURN_VALUE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, p1, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 158
    .restart local v0    # "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :pswitch_3
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->isState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v0    # "successResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_RETURN_VALUE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v0, v3, p1, v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mTag:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mTag:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArguments()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mArguments:Ljava/util/HashSet;

    return-object v0
.end method

.method public getReturnArgument()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mReturnArgument:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    return-object v0
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mService:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->mService:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
