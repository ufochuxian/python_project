.class Lcom/mob/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/f;->b(JLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mob/a/f;


# direct methods
.method constructor <init>(Lcom/mob/a/f;JLjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mob/a/f$1;->c:Lcom/mob/a/f;

    iput-wide p2, p0, Lcom/mob/a/f$1;->a:J

    iput-object p4, p0, Lcom/mob/a/f$1;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 4

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    const-string v1, "time"

    iget-wide v2, p0, Lcom/mob/a/f$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/mob/a/f$1;->c:Lcom/mob/a/f;

    invoke-static {v2}, Lcom/mob/a/f;->a(Lcom/mob/a/f;)Lcom/mob/tools/c/g;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/a/f$1;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lcom/mob/tools/c/d;->a([B[B)[B

    move-result-object v1

    .line 112
    const-string v2, "data"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/mob/a/f$1;->c:Lcom/mob/a/f;

    invoke-static {v1}, Lcom/mob/a/f;->b(Lcom/mob/a/f;)Lcom/mob/tools/c/m$a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/c/m;->a(Lcom/mob/tools/c/m$a;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
