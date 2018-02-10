.class Lcom/android/volley/toolbox/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/k;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/volley/toolbox/k;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    .line 297
    .local v0, "bir":Lcom/android/volley/toolbox/k$a;
    invoke-static {v0}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$a;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/k$c;

    .line 301
    .local v1, "container":Lcom/android/volley/toolbox/k$c;
    invoke-static {v1}, Lcom/android/volley/toolbox/k$c;->a(Lcom/android/volley/toolbox/k$c;)Lcom/android/volley/toolbox/k$d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/android/volley/toolbox/k$a;->a()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 305
    invoke-static {v0}, Lcom/android/volley/toolbox/k$a;->b(Lcom/android/volley/toolbox/k$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/volley/toolbox/k$c;->a(Lcom/android/volley/toolbox/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 306
    invoke-static {v1}, Lcom/android/volley/toolbox/k$c;->a(Lcom/android/volley/toolbox/k$c;)Lcom/android/volley/toolbox/k$d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    goto :goto_0

    .line 308
    :cond_2
    invoke-static {v1}, Lcom/android/volley/toolbox/k$c;->a(Lcom/android/volley/toolbox/k$c;)Lcom/android/volley/toolbox/k$d;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/volley/toolbox/k$a;->a()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/volley/toolbox/k$d;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 312
    .end local v0    # "bir":Lcom/android/volley/toolbox/k$a;
    .end local v1    # "container":Lcom/android/volley/toolbox/k$c;
    :cond_3
    iget-object v2, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    invoke-static {v2}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 313
    iget-object v2, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 314
    return-void
.end method
