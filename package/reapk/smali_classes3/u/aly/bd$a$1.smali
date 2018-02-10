.class Lu/aly/bd$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/bd$a;->a(Lu/aly/bd$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lu/aly/bd$a;


# direct methods
.method constructor <init>(Lu/aly/bd$a;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lu/aly/bd$a$1;->b:Lu/aly/bd$a;

    iput p2, p0, Lu/aly/bd$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 228
    iget v0, p0, Lu/aly/bd$a$1;->a:I

    if-lez v0, :cond_0

    .line 229
    invoke-static {}, Lu/aly/bd;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/dh;->a(Landroid/content/Context;)Lu/aly/dh;

    move-result-object v1

    iget v0, p0, Lu/aly/bd$a$1;->a:I

    int-to-long v2, v0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "__evp_file_of"

    .line 229
    invoke-virtual/range {v1 .. v6}, Lu/aly/dh;->a(JJLjava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method
