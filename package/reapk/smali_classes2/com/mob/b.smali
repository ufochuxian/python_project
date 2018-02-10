.class public Lcom/mob/b;
.super Lcom/mob/tools/log/d;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mob/tools/log/d;-><init>()V

    .line 13
    const-string v0, "MOBSDK"

    new-instance v1, Lcom/mob/b$a;

    invoke-direct {v1, p0}, Lcom/mob/b$a;-><init>(Lcom/mob/b;)V

    invoke-static {v0, v1}, Lcom/mob/b;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/a;)V

    .line 23
    return-void
.end method

.method public static a()Lcom/mob/tools/log/d;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/mob/b;

    invoke-direct {v0}, Lcom/mob/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "MOBSDK"

    return-object v0
.end method
