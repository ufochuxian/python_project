.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/bumptech/glide/l;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/bumptech/glide/d/m;

.field protected final f:Lcom/bumptech/glide/d/g;

.field private g:Lcom/bumptech/glide/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/load/b;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/bumptech/glide/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/bumptech/glide/Priority;

.field private t:Z

.field private u:Lcom/bumptech/glide/g/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/d",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private y:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p5, "glide"    # Lcom/bumptech/glide/l;
    .param p6, "requestTracker"    # Lcom/bumptech/glide/d/m;
    .param p7, "lifecycle"    # Lcom/bumptech/glide/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lcom/bumptech/glide/f/f;, "Lcom/bumptech/glide/f/f<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p4, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/h/b;->a()Lcom/bumptech/glide/h/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/load/b;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/h;->p:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/h;->t:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->a()Lcom/bumptech/glide/g/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/h;->v:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/h;->w:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/e;->b()Lcom/bumptech/glide/load/resource/e;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/h;->y:Lcom/bumptech/glide/load/f;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/h;->a:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/h;->d:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/d/m;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/g;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lcom/bumptech/glide/f/a;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/f/a;-><init>(Lcom/bumptech/glide/f/f;)V

    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/h",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "loadProvider":Lcom/bumptech/glide/f/f;, "Lcom/bumptech/glide/f/f<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p3, "other":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;***>;"
    iget-object v1, p3, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/h;->a:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    iget-object v6, p3, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/d/m;

    iget-object v7, p3, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 87
    iget-object v0, p3, Lcom/bumptech/glide/h;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/h;->h:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lcom/bumptech/glide/h;->j:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->j:Z

    .line 89
    iget-object v0, p3, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/load/b;

    iput-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/load/b;

    .line 90
    iget-object v0, p3, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean v0, p3, Lcom/bumptech/glide/h;->t:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->t:Z

    .line 92
    return-void
.end method

.method private a()Lcom/bumptech/glide/Priority;
    .locals 3

    .prologue
    .line 776
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v1, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    sget-object v2, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    if-ne v1, v2, :cond_0

    .line 777
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 783
    .local v0, "result":Lcom/bumptech/glide/Priority;
    :goto_0
    return-object v0

    .line 778
    .end local v0    # "result":Lcom/bumptech/glide/Priority;
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    sget-object v2, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    if-ne v1, v2, :cond_1

    .line 779
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .restart local v0    # "result":Lcom/bumptech/glide/Priority;
    goto :goto_0

    .line 781
    .end local v0    # "result":Lcom/bumptech/glide/Priority;
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .restart local v0    # "result":Lcom/bumptech/glide/Priority;
    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/g/b/m;, "Lcom/bumptech/glide/g/b/m<TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    .line 790
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/g/b/m;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;
    .locals 24
    .param p2, "sizeMultiplier"    # F
    .param p3, "priority"    # Lcom/bumptech/glide/Priority;
    .param p4, "requestCoordinator"    # Lcom/bumptech/glide/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/g/d;",
            ")",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/g/b/m;, "Lcom/bumptech/glide/g/b/m<TTranscodeType;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/h;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/load/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/h;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/h;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/h;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/h;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/h;->B:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/h;->C:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/g/f;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v5}, Lcom/bumptech/glide/l;->d()Lcom/bumptech/glide/load/engine/c;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/h;->y:Lcom/bumptech/glide/load/f;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/h;->d:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/h;->t:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/h;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/h;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/g/b;->a(Lcom/bumptech/glide/f/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/b/m;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/g/f;Lcom/bumptech/glide/g/d;Lcom/bumptech/glide/load/engine/c;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/bumptech/glide/g/a/d;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/g/b;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/g/b/m;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;
    .locals 7
    .param p2, "parentCoordinator"    # Lcom/bumptech/glide/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/g/h;",
            ")",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/g/b/m;, "Lcom/bumptech/glide/g/b/m<TTranscodeType;>;"
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    if-eqz v4, :cond_4

    .line 795
    iget-boolean v4, p0, Lcom/bumptech/glide/h;->A:Z

    if-eqz v4, :cond_0

    .line 796
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 800
    :cond_0
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget-object v4, v4, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    invoke-static {}, Lcom/bumptech/glide/g/a/e;->a()Lcom/bumptech/glide/g/a/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 801
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget-object v5, p0, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    iput-object v5, v4, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    .line 804
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget-object v4, v4, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    if-nez v4, :cond_2

    .line 805
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/Priority;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    .line 808
    :cond_2
    iget v4, p0, Lcom/bumptech/glide/h;->w:I

    iget v5, p0, Lcom/bumptech/glide/h;->v:I

    invoke-static {v4, v5}, Lcom/bumptech/glide/i/i;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget v4, v4, Lcom/bumptech/glide/h;->w:I

    iget-object v5, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget v5, v5, Lcom/bumptech/glide/h;->v:I

    invoke-static {v4, v5}, Lcom/bumptech/glide/i/i;->a(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 811
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    iget v5, p0, Lcom/bumptech/glide/h;->w:I

    iget v6, p0, Lcom/bumptech/glide/h;->v:I

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/h;->b(II)Lcom/bumptech/glide/h;

    .line 814
    :cond_3
    new-instance v0, Lcom/bumptech/glide/g/h;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/g/h;-><init>(Lcom/bumptech/glide/g/d;)V

    .line 815
    .local v0, "coordinator":Lcom/bumptech/glide/g/h;
    iget-object v4, p0, Lcom/bumptech/glide/h;->p:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v1

    .line 817
    .local v1, "fullRequest":Lcom/bumptech/glide/g/c;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bumptech/glide/h;->A:Z

    .line 819
    iget-object v4, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    invoke-direct {v4, p1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;

    move-result-object v2

    .line 820
    .local v2, "thumbRequest":Lcom/bumptech/glide/g/c;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/bumptech/glide/h;->A:Z

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/g/h;->a(Lcom/bumptech/glide/g/c;Lcom/bumptech/glide/g/c;)V

    .line 832
    .end local v0    # "coordinator":Lcom/bumptech/glide/g/h;
    .end local v1    # "fullRequest":Lcom/bumptech/glide/g/c;
    .end local v2    # "thumbRequest":Lcom/bumptech/glide/g/c;
    :goto_0
    return-object v0

    .line 823
    :cond_4
    iget-object v4, p0, Lcom/bumptech/glide/h;->n:Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 825
    new-instance v0, Lcom/bumptech/glide/g/h;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/g/h;-><init>(Lcom/bumptech/glide/g/d;)V

    .line 826
    .restart local v0    # "coordinator":Lcom/bumptech/glide/g/h;
    iget-object v4, p0, Lcom/bumptech/glide/h;->p:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v1

    .line 827
    .restart local v1    # "fullRequest":Lcom/bumptech/glide/g/c;
    iget-object v4, p0, Lcom/bumptech/glide/h;->n:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/Priority;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v3

    .line 828
    .local v3, "thumbnailRequest":Lcom/bumptech/glide/g/c;
    invoke-virtual {v0, v1, v3}, Lcom/bumptech/glide/g/h;->a(Lcom/bumptech/glide/g/c;Lcom/bumptech/glide/g/c;)V

    goto :goto_0

    .line 832
    .end local v0    # "coordinator":Lcom/bumptech/glide/g/h;
    .end local v1    # "fullRequest":Lcom/bumptech/glide/g/c;
    .end local v3    # "thumbnailRequest":Lcom/bumptech/glide/g/c;
    :cond_5
    iget-object v4, p0, Lcom/bumptech/glide/h;->p:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/h;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/bumptech/glide/h$2;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    iget-object v1, p0, Lcom/bumptech/glide/h;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/l;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0

    .line 684
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->l()V

    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->k()V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/d",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "animationFactory":Lcom/bumptech/glide/g/a/d;, "Lcom/bumptech/glide/g/a/d<TTranscodeType;>;"
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/h;->u:Lcom/bumptech/glide/g/a/d;

    .line 422
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "target":Lcom/bumptech/glide/g/b/m;, "TY;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must pass in a non null Target"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_0
    iget-boolean v2, p0, Lcom/bumptech/glide/h;->j:Z

    if-nez v2, :cond_1

    .line 647
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must first set a model (try #load())"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/g/b/m;->b_()Lcom/bumptech/glide/g/c;

    move-result-object v0

    .line 652
    .local v0, "previous":Lcom/bumptech/glide/g/c;
    if-eqz v0, :cond_2

    .line 653
    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->d()V

    .line 654
    iget-object v2, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/d/m;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/d/m;->c(Lcom/bumptech/glide/g/c;)V

    .line 655
    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->a()V

    .line 658
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/c;

    move-result-object v1

    .line 659
    .local v1, "request":Lcom/bumptech/glide/g/c;
    invoke-interface {p1, v1}, Lcom/bumptech/glide/g/b/m;->a(Lcom/bumptech/glide/g/c;)V

    .line 660
    iget-object v2, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/d/g;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    .line 661
    iget-object v2, p0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/d/m;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/d/m;->a(Lcom/bumptech/glide/g/c;)V

    .line 663
    return-object p1
.end method

.method public b(II)Lcom/bumptech/glide/h;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {p1, p2}, Lcom/bumptech/glide/i/i;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/h;->w:I

    .line 567
    iput p2, p0, Lcom/bumptech/glide/h;->v:I

    .line 569
    return-object p0
.end method

.method public b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g/a/g;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->s:Lcom/bumptech/glide/Priority;

    .line 310
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "animator"    # Lcom/bumptech/glide/g/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/h$a;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/i;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g/a/i;-><init>(Lcom/bumptech/glide/g/a/h$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "requestListener":Lcom/bumptech/glide/g/f;, "Lcom/bumptech/glide/g/f<-TModelType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/g/f;

    .line 533
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<***TTranscodeType;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/h;->o:Lcom/bumptech/glide/h;

    .line 137
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/a;, "Lcom/bumptech/glide/load/a<TDataType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/a;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;
    .locals 2
    .param p1, "signature"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/load/b;

    .line 591
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "encoder":Lcom/bumptech/glide/load/e;, "Lcom/bumptech/glide/load/e<TResourceType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/e;)V

    .line 297
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TResourceType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TResourceType;TTranscodeType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/resource/f/f;)V

    .line 359
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->h:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->j:Z

    .line 608
    return-object p0
.end method

.method public b(Z)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/h;->t:Z

    .line 550
    return-object p0

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "transformations":[Lcom/bumptech/glide/load/f;, "[Lcom/bumptech/glide/load/f<TResourceType;>;"
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/bumptech/glide/h;->z:Z

    .line 323
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->y:Lcom/bumptech/glide/load/f;

    .line 329
    :goto_0
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/c;-><init>([Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->y:Lcom/bumptech/glide/load/f;

    goto :goto_0
.end method

.method public c(F)Lcom/bumptech/glide/h;
    .locals 2
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->p:Ljava/lang/Float;

    .line 190
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->m()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public d(F)Lcom/bumptech/glide/h;
    .locals 2
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->n:Ljava/lang/Float;

    .line 172
    return-object p0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->r:Landroid/graphics/drawable/Drawable;

    .line 518
    return-object p0
.end method

.method public e(I)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lcom/bumptech/glide/h;->l:I

    .line 505
    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->B:Landroid/graphics/drawable/Drawable;

    .line 471
    return-object p0
.end method

.method public e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "cacheDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/File;TResourceType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/d;)V

    .line 232
    :cond_0
    return-object p0
.end method

.method public f(II)Lcom/bumptech/glide/g/a;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/g/a",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/g/e;

    iget-object v1, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->i()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/g/e;-><init>(Landroid/os/Handler;II)V

    .line 718
    .local v0, "target":Lcom/bumptech/glide/g/e;, "Lcom/bumptech/glide/g/e<TModelType;TTranscodeType;>;"
    iget-object v1, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->i()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/h$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/h$1;-><init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/g/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-object v0
.end method

.method public f(I)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lcom/bumptech/glide/h;->C:I

    .line 492
    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput-object p1, p0, Lcom/bumptech/glide/h;->q:Landroid/graphics/drawable/Drawable;

    .line 449
    return-object p0
.end method

.method public f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<TDataType;TResourceType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->b(Lcom/bumptech/glide/load/d;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public g(II)Lcom/bumptech/glide/g/b/m;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {p1, p2}, Lcom/bumptech/glide/g/b/i;->a(II)Lcom/bumptech/glide/g/b/i;

    move-result-object v0

    .line 750
    .local v0, "target":Lcom/bumptech/glide/g/b/i;, "Lcom/bumptech/glide/g/b/i<TTranscodeType;>;"
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    move-result-object v1

    return-object v1
.end method

.method public g(I)Lcom/bumptech/glide/h;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iput p1, p0, Lcom/bumptech/glide/h;->k:I

    .line 436
    return-object p0
.end method

.method public h(I)Lcom/bumptech/glide/h;
    .locals 2
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/g;

    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/g/a/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .locals 0

    .prologue
    .line 772
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 768
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    return-void
.end method

.method public m()Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    .line 626
    .local v0, "clone":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    iget-object v2, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/f/a;->g()Lcom/bumptech/glide/f/a;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/f/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return-object v0

    .line 626
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 628
    .end local v0    # "clone":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public n()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->a()Lcom/bumptech/glide/g/a/d;

    move-result-object v0

    .line 368
    .local v0, "animation":Lcom/bumptech/glide/g/a/d;, "Lcom/bumptech/glide/g/a/d<TTranscodeType;>;"
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    move-result-object v1

    return-object v1
.end method

.method public o()Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/e;->b()Lcom/bumptech/glide/load/resource/e;

    move-result-object v0

    .line 340
    .local v0, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TResourceType;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;

    move-result-object v1

    return-object v1
.end method

.method public q()Lcom/bumptech/glide/g/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g/b/m",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<TModelType;TDataType;TResourceType;TTranscodeType;>;"
    const/high16 v0, -0x80000000

    .line 763
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/h;->g(II)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0
.end method
