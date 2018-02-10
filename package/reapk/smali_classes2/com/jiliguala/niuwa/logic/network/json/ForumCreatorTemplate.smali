.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumSctPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumContentPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumRefPart;,
        Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;
    }
.end annotation


# instance fields
.field public meta:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

.field public res:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    .locals 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "audioUrl"    # Ljava/lang/String;
    .param p4, "boid"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "audioLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;"
        }
    .end annotation

    .prologue
    .line 17
    .local p8, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    new-instance v10, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;

    invoke-direct {v10}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;-><init>()V

    .line 18
    .local v10, "template":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v1, v10, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;

    .line 19
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    invoke-direct {v1, p4}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;-><init>(I)V

    iput-object v1, v10, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    .line 20
    iget-object v1, v10, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->setTag(Ljava/util/ArrayList;)V

    .line 21
    return-object v10
.end method

.method public static generateReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    .locals 9
    .param p0, "rootId"    # Ljava/lang/String;
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "audioUrl"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "audioLen"    # I

    .prologue
    .line 26
    new-instance v8, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;-><init>()V

    .line 27
    .local v8, "template":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumResPart;

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    .line 29
    iget-object v0, v8, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->setTag(Ljava/util/ArrayList;)V

    .line 30
    return-object v8
.end method
