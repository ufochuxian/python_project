.class Lcom/bigkoo/pickerview/e/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bigkoo/pickerview/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/e/b;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/e/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 89
    .local p0, "this":Lcom/bigkoo/pickerview/e/b$1;, "Lcom/bigkoo/pickerview/e/b$1;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 93
    .local p0, "this":Lcom/bigkoo/pickerview/e/b$1;, "Lcom/bigkoo/pickerview/e/b$1;"
    const/4 v0, 0x0

    .line 94
    .local v0, "opt2Select":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;)V

    .line 99
    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 101
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->c(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bigkoo/pickerview/b/b;->a(I)V

    .line 106
    :cond_2
    return-void
.end method
