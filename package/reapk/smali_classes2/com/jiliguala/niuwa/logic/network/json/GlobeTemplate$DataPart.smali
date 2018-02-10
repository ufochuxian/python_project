.class public Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e4d6e11b12a711L


# instance fields
.field public android_link:Ljava/lang/String;

.field public android_ver:I

.field public android_whatsnew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public channelUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;",
            ">;"
        }
    .end annotation
.end field

.field public classicon:Ljava/lang/String;

.field public cls:Z

.field public ios_ver:I

.field public notif:Z

.field public recommendnotif:Z

.field public shareprefix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public speakmode:I

.field public subscribe:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

.field public treasure:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

.field public tvlogin:Z

.field public user:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->channelUrls:Ljava/util/ArrayList;

    return-void
.end method
