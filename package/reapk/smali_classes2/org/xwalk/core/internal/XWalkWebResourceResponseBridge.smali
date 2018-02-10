.class public Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
.super Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

.field private setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>()V

    .line 44
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setMimeType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 66
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMimeType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 85
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setEncoding"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 107
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getEncoding"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 126
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 148
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setStatusCodeAndReasonPhrase"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 189
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getStatusCode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 211
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getReasonPhrase"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 230
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 252
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 23
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .line 24
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->reflectionInit()V

    .line 25
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataSuper()Ljava/io/InputStream;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getDataSuper()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 140
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 144
    .local v0, "ret":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    .end local v0    # "ret":Ljava/io/InputStream;
    :cond_0
    return-object v0

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "ret":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingSuper()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEncodingSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 99
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeSuper()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMimeTypeSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 58
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 63
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseSuper()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getReasonPhraseSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 203
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 208
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 205
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersSuper()Ljava/util/Map;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getResponseHeadersSuper()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 244
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeSuper()I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getStatusCodeSuper()I
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_0

    .line 181
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v0

    .line 186
    .local v0, "ret":I
    :goto_0
    return v0

    .line 183
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 256
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 257
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 289
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkWebResourceResponse"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 262
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setMimeType"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 269
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getMimeType"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 271
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setEncoding"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 273
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getEncoding"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 275
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setData"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 277
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getData"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 279
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setStatusCodeAndReasonPhrase"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 281
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getStatusCode"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 283
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getReasonPhrase"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 285
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setResponseHeaders"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 287
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getResponseHeaders"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataSuper(Ljava/io/InputStream;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDataSuper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setData(Ljava/io/InputStream;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setData(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingSuper(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setEncodingSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setEncoding(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeSuper(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMimeTypeSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setMimeType(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setMimeType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersSuper(Ljava/util/Map;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setResponseHeadersSuper(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setResponseHeaders(Ljava/util/Map;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseSuper(ILjava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setStatusCodeAndReasonPhraseSuper(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    goto :goto_0
.end method
