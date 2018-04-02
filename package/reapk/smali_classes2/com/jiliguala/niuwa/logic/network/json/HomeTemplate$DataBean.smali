.class public Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$MetricBean;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;,
        Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;
    }
.end annotation


# instance fields
.field public clockinnotif:Z

.field public curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

.field public guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

.field public homenotif:Z

.field public mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

.field public metric:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$MetricBean;

.field public ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

.field public roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

.field public skin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;",
            ">;"
        }
    .end annotation
.end field

.field public splash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
