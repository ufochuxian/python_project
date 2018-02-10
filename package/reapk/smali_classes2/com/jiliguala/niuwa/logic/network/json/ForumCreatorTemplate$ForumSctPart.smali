.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumSctPart"
.end annotation


# static fields
.field public static final TYPE_AUDIO:Ljava/lang/String; = "audio-content"

.field public static final TYPE_IMG:Ljava/lang/String; = "img-over"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text-content"

.field private static final URL_PRE:Ljava/lang/String; = "JLImage://"


# instance fields
.field public data:Ljava/lang/String;

.field public h:I

.field public typ:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->data:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    const-string v1, "img-over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JLImage://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->data:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->w:I

    .line 103
    iput p5, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->h:I

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    const-string v1, "img-over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JLImage://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "audioLen"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->data:Ljava/lang/String;

    .line 126
    iput p4, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->w:I

    .line 127
    iput p5, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->h:I

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->typ:Ljava/lang/String;

    const-string v1, "img-over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JLImage://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "audio-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->data:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;->url:Ljava/lang/String;

    goto :goto_0
.end method
