.class public Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueBean"
.end annotation


# instance fields
.field private history:Ljava/lang/String;

.field private result:Z

.field private session:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHistory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->history:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->result:Z

    return v0
.end method

.method public setHistory(Ljava/lang/String;)V
    .locals 0
    .param p1, "history"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->history:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->result:Z

    .line 116
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->session:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->source:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->title:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->url:Ljava/lang/String;

    .line 76
    return-void
.end method
