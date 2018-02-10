.class public Lcom/bumptech/glide/i;
.super Lcom/bumptech/glide/h;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/h",
        "<TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lcom/bumptech/glide/d;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/o$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/l;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glide"    # Lcom/bumptech/glide/l;
    .param p7, "requestTracker"    # Lcom/bumptech/glide/d/m;
    .param p8, "lifecycle"    # Lcom/bumptech/glide/d/g;
    .param p9, "optionsApplier"    # Lcom/bumptech/glide/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/l;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            "Lcom/bumptech/glide/o$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    .local p3, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p4, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TModelType;TDataType;>;"
    .local p5, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    .local p6, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/f/h;->b()Lcom/bumptech/glide/load/resource/f/f;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/b/l;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/i;->i:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/i;->j:Lcom/bumptech/glide/o$d;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/o$d;)V
    .locals 2
    .param p6, "optionsApplier"    # Lcom/bumptech/glide/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/h",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/o$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    .local p1, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    .local p2, "other":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;***>;"
    .local p3, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TModelType;TDataType;>;"
    .local p4, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    .local p5, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    iget-object v0, p2, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-static {}, Lcom/bumptech/glide/load/resource/f/h;->b()Lcom/bumptech/glide/load/resource/f/f;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/f;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/b/l;

    .line 52
    iput-object p4, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Class;

    .line 53
    iput-object p5, p0, Lcom/bumptech/glide/i;->i:Ljava/lang/Class;

    .line 54
    iput-object p6, p0, Lcom/bumptech/glide/i;->j:Lcom/bumptech/glide/o$d;

    .line 55
    return-void
.end method

.method private static a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/f;
    .locals 2
    .param p0, "glide"    # Lcom/bumptech/glide/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/f/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p4, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TZ;TR;>;"
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 42
    .local v0, "dataLoadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<TT;TZ;>;"
    new-instance v1, Lcom/bumptech/glide/f/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/f/b;)V

    return-object v1
.end method

.method private a()Lcom/bumptech/glide/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/f/h;->b()Lcom/bumptech/glide/load/resource/f/f;

    move-result-object v2

    .line 101
    .local v2, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Ljava/io/File;Ljava/io/File;>;"
    iget-object v3, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/l;

    iget-object v4, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Class;

    const-class v5, Ljava/io/File;

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/l;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 102
    .local v0, "dataLoadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<TDataType;Ljava/io/File;>;"
    new-instance v1, Lcom/bumptech/glide/f/e;

    iget-object v3, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/b/l;

    invoke-direct {v1, v3, v2, v0}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/f/b;)V

    .line 104
    .local v1, "fixedLoadProvider":Lcom/bumptech/glide/f/e;, "Lcom/bumptech/glide/f/e<TModelType;TDataType;Ljava/io/File;Ljava/io/File;>;"
    iget-object v3, p0, Lcom/bumptech/glide/i;->j:Lcom/bumptech/glide/o$d;

    new-instance v4, Lcom/bumptech/glide/h;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v1, v5, p0}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->b(Z)Lcom/bumptech/glide/h;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public a(II)Lcom/bumptech/glide/g/a;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/g/a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/h;->f(II)Lcom/bumptech/glide/g/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/g/b/m",
            "<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    .local p1, "target":Lcom/bumptech/glide/g/b/m;, "TY;"
    invoke-direct {p0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/resource/f/f;Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TModelType;TDataType;TResourceType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TResourceType;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    iget-object v1, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/l;

    iget-object v2, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/b/l;

    iget-object v3, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/i;->i:Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f/f;

    move-result-object v0

    .line 81
    .local v0, "loadProvider":Lcom/bumptech/glide/f/f;, "Lcom/bumptech/glide/f/f<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v1, p0, Lcom/bumptech/glide/i;->j:Lcom/bumptech/glide/o$d;

    new-instance v2, Lcom/bumptech/glide/h;

    invoke-direct {v2, v0, p2, p0}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v1

    return-object v1
.end method
