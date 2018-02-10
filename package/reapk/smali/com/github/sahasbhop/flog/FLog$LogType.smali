.class public final enum Lcom/github/sahasbhop/flog/FLog$LogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/sahasbhop/flog/FLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/sahasbhop/flog/FLog$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/sahasbhop/flog/FLog$LogType;

.field public static final enum DEBUG:Lcom/github/sahasbhop/flog/FLog$LogType;

.field public static final enum ERROR:Lcom/github/sahasbhop/flog/FLog$LogType;

.field public static final enum INFO:Lcom/github/sahasbhop/flog/FLog$LogType;

.field public static final enum VERBOSE:Lcom/github/sahasbhop/flog/FLog$LogType;

.field public static final enum WARNING:Lcom/github/sahasbhop/flog/FLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/github/sahasbhop/flog/FLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->ERROR:Lcom/github/sahasbhop/flog/FLog$LogType;

    .line 47
    new-instance v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lcom/github/sahasbhop/flog/FLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->WARNING:Lcom/github/sahasbhop/flog/FLog$LogType;

    .line 48
    new-instance v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/github/sahasbhop/flog/FLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->DEBUG:Lcom/github/sahasbhop/flog/FLog$LogType;

    .line 49
    new-instance v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/github/sahasbhop/flog/FLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->INFO:Lcom/github/sahasbhop/flog/FLog$LogType;

    .line 50
    new-instance v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v6}, Lcom/github/sahasbhop/flog/FLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->VERBOSE:Lcom/github/sahasbhop/flog/FLog$LogType;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/sahasbhop/flog/FLog$LogType;

    sget-object v1, Lcom/github/sahasbhop/flog/FLog$LogType;->ERROR:Lcom/github/sahasbhop/flog/FLog$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/sahasbhop/flog/FLog$LogType;->WARNING:Lcom/github/sahasbhop/flog/FLog$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/sahasbhop/flog/FLog$LogType;->DEBUG:Lcom/github/sahasbhop/flog/FLog$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/sahasbhop/flog/FLog$LogType;->INFO:Lcom/github/sahasbhop/flog/FLog$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/sahasbhop/flog/FLog$LogType;->VERBOSE:Lcom/github/sahasbhop/flog/FLog$LogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->$VALUES:[Lcom/github/sahasbhop/flog/FLog$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/sahasbhop/flog/FLog$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/sahasbhop/flog/FLog$LogType;

    return-object v0
.end method

.method public static values()[Lcom/github/sahasbhop/flog/FLog$LogType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/github/sahasbhop/flog/FLog$LogType;->$VALUES:[Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-virtual {v0}, [Lcom/github/sahasbhop/flog/FLog$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/sahasbhop/flog/FLog$LogType;

    return-object v0
.end method
