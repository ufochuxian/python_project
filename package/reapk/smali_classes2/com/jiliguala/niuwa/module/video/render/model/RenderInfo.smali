.class public Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private friendlyName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private render:Ljava/lang/Object;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->render:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->type:I

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .locals 0
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->friendlyName:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->key:Ljava/lang/String;

    .line 19
    return-object p0
.end method

.method public setRender(Ljava/lang/Object;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .locals 0
    .param p1, "render"    # Ljava/lang/Object;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->render:Ljava/lang/Object;

    .line 37
    return-object p0
.end method

.method public setType(I)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->type:I

    .line 28
    return-object p0
.end method
