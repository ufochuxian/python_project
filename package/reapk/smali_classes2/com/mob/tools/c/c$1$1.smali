.class Lcom/mob/tools/c/c$1$1;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/c/c$1;->a(Lcom/mob/tools/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/c/c$1;


# direct methods
.method constructor <init>(Lcom/mob/tools/c/c$1;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/c/c$1;
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mob/tools/c/c$1$1;->a:Lcom/mob/tools/c/c$1;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    .line 236
    .local v0, "m":J
    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/mob/tools/c/c$1$1;->in:Ljava/io/InputStream;

    sub-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 238
    .local v2, "mm":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 243
    .end local v2    # "mm":J
    :cond_0
    return-wide v0

    .line 241
    .restart local v2    # "mm":J
    :cond_1
    add-long/2addr v0, v2

    .line 242
    goto :goto_0
.end method
