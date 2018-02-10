.class public Lcom/jiliguala/niuwa/logic/g/a/c;
.super Lcom/jiliguala/niuwa/logic/g/a/a;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a/a;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->c:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->d:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "chnId"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "videoPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->e:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "playIndex"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/jiliguala/niuwa/logic/g/a/c;->f:I

    .line 30
    return-void
.end method
