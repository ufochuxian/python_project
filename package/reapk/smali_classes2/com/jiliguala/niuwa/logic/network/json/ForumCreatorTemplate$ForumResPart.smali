.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;
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
    name = "ForumResPart"
.end annotation


# instance fields
.field public content:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;

.field public ref:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "audioUrl"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "audioLen"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;->content:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;->ref:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "audioUrl"    # Ljava/lang/String;
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "audioLen"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;->ttl:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;->thmb:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;->content:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;

    .line 44
    return-void
.end method
