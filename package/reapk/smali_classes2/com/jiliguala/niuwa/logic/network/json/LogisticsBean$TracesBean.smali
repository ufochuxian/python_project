.class public Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TracesBean"
.end annotation


# instance fields
.field private AcceptStation:Ljava/lang/String;

.field private AcceptTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->AcceptStation:Ljava/lang/String;

    return-object v0
.end method

.method public getAcceptTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->AcceptTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "AcceptStation"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->AcceptStation:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setAcceptTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "AcceptTime"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean$TracesBean;->AcceptTime:Ljava/lang/String;

    .line 93
    return-void
.end method
