.class public Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/McTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;,
        Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;,
        Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fec74451ebec0deL


# instance fields
.field public audiochannel:Ljava/lang/String;

.field public autopay:Z

.field public branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

.field public buy:Ljava/lang/String;

.field public lv:Ljava/lang/String;

.field public meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

.field public plan:Ljava/lang/String;

.field public practice:Z

.field public roadmap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;"
        }
    .end annotation
.end field

.field public roadsign:Ljava/lang/String;

.field public show:Z

.field public unitroadmap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;",
            ">;"
        }
    .end annotation
.end field

.field public videointro:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBuy1V1()Z
    .locals 2

    .prologue
    .line 49
    const-string v0, "buy1v1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->buy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBuyRoadMap()Z
    .locals 2

    .prologue
    .line 53
    const-string v0, "buyroadmap"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->buy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlanA()Z
    .locals 2

    .prologue
    .line 71
    const-string v0, "A"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
