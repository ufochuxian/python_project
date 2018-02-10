.class public Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;
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
    name = "ForumMetaPart"
.end annotation


# instance fields
.field public boid:I

.field public rid:Ljava/lang/String;

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "boid"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->tags:Ljava/util/ArrayList;

    .line 149
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->boid:I

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->tags:Ljava/util/ArrayList;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->boid:I

    .line 154
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->rid:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public setTag(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$ForumMetaPart;->tags:Ljava/util/ArrayList;

    .line 159
    return-void
.end method
