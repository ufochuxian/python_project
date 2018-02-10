.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;
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
    name = "ForumContentPart"
.end annotation


# instance fields
.field public sct:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;",
            ">;"
        }
    .end annotation
.end field

.field public typ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->typ:I

    .line 68
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;

    const-string v1, "text-content"

    const-string v3, ""

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;

    const-string v1, "img-over"

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "audioUrl"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "audioLen"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->typ:I

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;

    const-string v2, "text-content"

    const-string v3, ""

    invoke-direct {v1, v2, p1, v3}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;

    const-string v1, "img-over"

    move-object v2, p2

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;->sct:Ljava/util/ArrayList;

    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;

    const-string v1, "audio-content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    return-void
.end method
