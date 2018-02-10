.class public Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueBean"
.end annotation


# instance fields
.field private time_stamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime_stamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;->time_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public setTime_stamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "time_stamp"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;->time_stamp:Ljava/lang/String;

    .line 68
    return-void
.end method
