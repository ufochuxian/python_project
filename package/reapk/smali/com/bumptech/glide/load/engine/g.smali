.class Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/f;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/b;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lcom/bumptech/glide/load/d;
    .param p6, "sourceDecoder"    # Lcom/bumptech/glide/load/d;
    .param p7, "transformation"    # Lcom/bumptech/glide/load/f;
    .param p8, "encoder"    # Lcom/bumptech/glide/load/e;
    .param p9, "transcoder"    # Lcom/bumptech/glide/load/resource/f/f;
    .param p10, "sourceEncoder"    # Lcom/bumptech/glide/load/a;

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/load/engine/f;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/a;)V

    return-object v0
.end method
