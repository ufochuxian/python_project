.class public Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Glide"

.field private static volatile b:Lcom/bumptech/glide/l;


# instance fields
.field private final c:Lcom/bumptech/glide/load/b/c;

.field private final d:Lcom/bumptech/glide/load/engine/c;

.field private final e:Lcom/bumptech/glide/load/engine/a/c;

.field private final f:Lcom/bumptech/glide/load/engine/b/i;

.field private final g:Lcom/bumptech/glide/load/DecodeFormat;

.field private final h:Lcom/bumptech/glide/g/b/g;

.field private final i:Lcom/bumptech/glide/load/resource/f/g;

.field private final j:Lcom/bumptech/glide/f/c;

.field private final k:Lcom/bumptech/glide/load/resource/bitmap/f;

.field private final l:Lcom/bumptech/glide/load/resource/e/f;

.field private final m:Lcom/bumptech/glide/load/resource/bitmap/j;

.field private final n:Lcom/bumptech/glide/load/resource/e/f;

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/bumptech/glide/load/engine/c/b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 10
    .param p1, "engine"    # Lcom/bumptech/glide/load/engine/c;
    .param p2, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v4, Lcom/bumptech/glide/g/b/g;

    invoke-direct {v4}, Lcom/bumptech/glide/g/b/g;-><init>()V

    iput-object v4, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/g/b/g;

    .line 93
    new-instance v4, Lcom/bumptech/glide/load/resource/f/g;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/f/g;-><init>()V

    iput-object v4, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/load/resource/f/g;

    .line 204
    iput-object p1, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/load/engine/c;

    .line 205
    iput-object p3, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/load/engine/a/c;

    .line 206
    iput-object p2, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/load/engine/b/i;

    .line 207
    iput-object p5, p0, Lcom/bumptech/glide/l;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 208
    new-instance v4, Lcom/bumptech/glide/load/b/c;

    invoke-direct {v4, p4}, Lcom/bumptech/glide/load/b/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/load/b/c;

    .line 209
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->o:Landroid/os/Handler;

    .line 210
    new-instance v4, Lcom/bumptech/glide/load/engine/c/b;

    invoke-direct {v4, p2, p3, p5}, Lcom/bumptech/glide/load/engine/c/b;-><init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->p:Lcom/bumptech/glide/load/engine/c/b;

    .line 212
    new-instance v4, Lcom/bumptech/glide/f/c;

    invoke-direct {v4}, Lcom/bumptech/glide/f/c;-><init>()V

    iput-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    .line 214
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v3, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 216
    .local v3, "streamBitmapLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/o;
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6, v3}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 218
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 220
    .local v0, "fileDescriptorLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/h;
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6, v0}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 222
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v2, v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    .line 224
    .local v2, "imageVideoDataLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/n;
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Lcom/bumptech/glide/load/b/g;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v6, v2}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 226
    new-instance v1, Lcom/bumptech/glide/load/resource/d/c;

    invoke-direct {v1, p4, p3}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 228
    .local v1, "gifDrawableLoadProvider":Lcom/bumptech/glide/load/resource/d/c;
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {v4, v5, v6, v1}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 230
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Lcom/bumptech/glide/load/b/g;

    const-class v6, Lcom/bumptech/glide/load/resource/e/a;

    new-instance v7, Lcom/bumptech/glide/load/resource/e/g;

    invoke-direct {v7, v2, v1, p3}, Lcom/bumptech/glide/load/resource/e/g;-><init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 233
    iget-object v4, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/resource/c/d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/c/d;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f/b;)V

    .line 235
    const-class v4, Ljava/io/File;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/b/a/a$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/a/a$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 236
    const-class v4, Ljava/io/File;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/e$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/e$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 237
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/b/a/c$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/a/c$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 238
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/g$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/g$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 239
    const-class v4, Ljava/lang/Integer;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/b/a/c$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/a/c$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 240
    const-class v4, Ljava/lang/Integer;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/g$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/g$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 241
    const-class v4, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/b/a/d$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/a/d$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 242
    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/h$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/h$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 243
    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/b/a/e$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/a/e$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 244
    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/i$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/i$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 245
    const-class v4, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/j$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/j$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 246
    const-class v4, Lcom/bumptech/glide/load/b/d;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/b$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/b$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 247
    const-class v4, [B

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/b/d$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/b/d$a;-><init>()V

    invoke-virtual {p0, v4, v5, v6}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V

    .line 249
    iget-object v4, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/load/resource/f/g;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Lcom/bumptech/glide/load/resource/bitmap/k;

    new-instance v7, Lcom/bumptech/glide/load/resource/f/e;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, p3}, Lcom/bumptech/glide/load/resource/f/e;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/f/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)V

    .line 251
    iget-object v4, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/load/resource/f/g;

    const-class v5, Lcom/bumptech/glide/load/resource/e/a;

    const-class v6, Lcom/bumptech/glide/load/resource/b/b;

    new-instance v7, Lcom/bumptech/glide/load/resource/f/c;

    new-instance v8, Lcom/bumptech/glide/load/resource/f/e;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, p3}, Lcom/bumptech/glide/load/resource/f/e;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/resource/f/c;-><init>(Lcom/bumptech/glide/load/resource/f/f;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/f/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/f;)V

    .line 255
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v4, p3}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->k:Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 256
    new-instance v4, Lcom/bumptech/glide/load/resource/e/f;

    iget-object v5, p0, Lcom/bumptech/glide/l;->k:Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v4, p3, v5}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/load/resource/e/f;

    .line 258
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v4, p3}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/load/resource/bitmap/j;

    .line 259
    new-instance v4, Lcom/bumptech/glide/load/resource/e/f;

    iget-object v5, p0, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v4, p3, v5}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    iput-object v4, p0, Lcom/bumptech/glide/l;->n:Lcom/bumptech/glide/load/resource/e/f;

    .line 260
    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    if-nez p0, :cond_1

    .line 534
    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Glide"

    const-string v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/l;->m()Lcom/bumptech/glide/load/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/b/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "model":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "model":Ljava/lang/Object;, "TT;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Lcom/bumptech/glide/o;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 640
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 641
    .local v0, "retriever":Lcom/bumptech/glide/d/k;
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 665
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 666
    .local v0, "retriever":Lcom/bumptech/glide/d/k;
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 677
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 678
    .local v0, "retriever":Lcom/bumptech/glide/d/k;
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 652
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 653
    .local v0, "retriever":Lcom/bumptech/glide/d/k;
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 136
    .end local v1    # "result":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 133
    :cond_2
    const-string v3, "Glide"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const-string v3, "Glide"

    const-string v4, "default disk cache dir is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    .line 136
    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 459
    new-instance v0, Lcom/bumptech/glide/l$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/l$a;-><init>(Landroid/view/View;)V

    .line 460
    .local v0, "viewTarget":Lcom/bumptech/glide/g/b/m;, "Lcom/bumptech/glide/g/b/m<*>;"
    invoke-static {v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/g/b/m;)V

    .line 461
    return-void
.end method

.method public static a(Lcom/bumptech/glide/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "target":Lcom/bumptech/glide/g/a;, "Lcom/bumptech/glide/g/a<*>;"
    invoke-interface {p0}, Lcom/bumptech/glide/g/a;->a()V

    .line 443
    return-void
.end method

.method public static a(Lcom/bumptech/glide/g/b/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/m",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "target":Lcom/bumptech/glide/g/b/m;, "Lcom/bumptech/glide/g/b/m<*>;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 428
    invoke-interface {p0}, Lcom/bumptech/glide/g/b/m;->b_()Lcom/bumptech/glide/g/c;

    move-result-object v0

    .line 429
    .local v0, "request":Lcom/bumptech/glide/g/c;
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->d()V

    .line 431
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/bumptech/glide/g/b/m;->a(Lcom/bumptech/glide/g/c;)V

    .line 433
    :cond_0
    return-void
.end method

.method public static a(Lcom/bumptech/glide/m;)V
    .locals 2
    .param p0, "builder"    # Lcom/bumptech/glide/m;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/bumptech/glide/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Glide is already setup, check with isSetup() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->a()Lcom/bumptech/glide/l;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    .line 196
    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/l;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    sget-object v5, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    if-nez v5, :cond_2

    .line 146
    const-class v6, Lcom/bumptech/glide/l;

    monitor-enter v6

    .line 147
    :try_start_0
    sget-object v5, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    if-nez v5, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v5, Lcom/bumptech/glide/e/b;

    invoke-direct {v5, v0}, Lcom/bumptech/glide/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/bumptech/glide/e/b;->a()Ljava/util/List;

    move-result-object v4

    .line 151
    .local v4, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/e/a;>;"
    new-instance v1, Lcom/bumptech/glide/m;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/m;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "builder":Lcom/bumptech/glide/m;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/e/a;

    .line 153
    .local v3, "module":Lcom/bumptech/glide/e/a;
    invoke-interface {v3, v0, v1}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/m;)V

    goto :goto_0

    .line 160
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "builder":Lcom/bumptech/glide/m;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "module":Lcom/bumptech/glide/e/a;
    .end local v4    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/e/a;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 155
    .restart local v0    # "applicationContext":Landroid/content/Context;
    .restart local v1    # "builder":Lcom/bumptech/glide/m;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/e/a;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->a()Lcom/bumptech/glide/l;

    move-result-object v5

    sput-object v5, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    .line 156
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/e/a;

    .line 157
    .restart local v3    # "module":Lcom/bumptech/glide/e/a;
    sget-object v5, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    invoke-interface {v3, v0, v5}, Lcom/bumptech/glide/e/a;->a(Landroid/content/Context;Lcom/bumptech/glide/l;)V

    goto :goto_1

    .line 160
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "builder":Lcom/bumptech/glide/m;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "module":Lcom/bumptech/glide/e/a;
    .end local v4    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/e/a;>;"
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    sget-object v5, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    return-object v5
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "model":Ljava/lang/Object;, "TT;"
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/l;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v0

    return-object v0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/l;

    .line 201
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 629
    .local v0, "retriever":Lcom/bumptech/glide/d/k;
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v1

    return-object v1
.end method

.method private m()Lcom/bumptech/glide/load/b/c;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/load/b/c;

    return-object v0
.end method


# virtual methods
.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/m;
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/g/b/m",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/g/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/g/b/g;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/load/resource/f/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/f/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/f;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 383
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/i;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/c;->a(I)V

    .line 387
    return-void
.end method

.method public a(Lcom/bumptech/glide/MemoryCategory;)V
    .locals 2
    .param p1, "memoryCategory"    # Lcom/bumptech/glide/MemoryCategory;

    .prologue
    .line 414
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/load/engine/b/i;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/b/i;->a(F)V

    .line 417
    iget-object v0, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/c;->a(F)V

    .line 418
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/b/m",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    iget-object v1, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/load/b/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/load/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)Lcom/bumptech/glide/load/b/m;

    move-result-object v0

    .line 493
    .local v0, "removed":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/m;->a()V

    .line 496
    :cond_0
    return-void
.end method

.method public varargs a([Lcom/bumptech/glide/load/engine/c/d$a;)V
    .locals 1
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/c/d$a;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/l;->p:Lcom/bumptech/glide/load/engine/c/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/b;->a([Lcom/bumptech/glide/load/engine/c/d$a;)V

    .line 360
    return-void
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/f/b",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/l;->j:Lcom/bumptech/glide/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/engine/a/c;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/load/engine/a/c;

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v1, p0, Lcom/bumptech/glide/l;->c:Lcom/bumptech/glide/load/b/c;

    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/load/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/m;

    move-result-object v0

    .line 512
    .local v0, "removed":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/m;->a()V

    .line 515
    :cond_0
    return-void
.end method

.method d()Lcom/bumptech/glide/load/engine/c;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/load/engine/c;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/resource/bitmap/f;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/l;->k:Lcom/bumptech/glide/load/resource/bitmap/f;

    return-object v0
.end method

.method f()Lcom/bumptech/glide/load/resource/bitmap/j;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/load/resource/bitmap/j;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/load/resource/e/f;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/load/resource/e/f;

    return-object v0
.end method

.method h()Lcom/bumptech/glide/load/resource/e/f;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/l;->n:Lcom/bumptech/glide/load/resource/e/f;

    return-object v0
.end method

.method i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/l;->o:Landroid/os/Handler;

    return-object v0
.end method

.method j()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/l;->g:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/i;->c()V

    .line 373
    iget-object v0, p0, Lcom/bumptech/glide/l;->e:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/c;->b()V

    .line 374
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/bumptech/glide/i/i;->b()V

    .line 398
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->d()Lcom/bumptech/glide/load/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c;->a()V

    .line 399
    return-void
.end method
