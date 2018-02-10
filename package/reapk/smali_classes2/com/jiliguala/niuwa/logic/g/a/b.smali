.class public Lcom/jiliguala/niuwa/logic/g/a/b;
.super Lcom/jiliguala/niuwa/logic/g/a/a;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a/a;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    .line 16
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "ttl"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/g/a/a;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->c:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->d:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "audioPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->e:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->g:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "nextIndex"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->g:I

    .line 37
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "playIndex"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/jiliguala/niuwa/logic/g/a/b;->f:I

    .line 45
    return-void
.end method
