.class final Landroid/support/v4/app/ao$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ao;->a(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/v4/app/ao$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/ao$2;->b:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/ao$2;->c:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Landroid/support/v4/app/ao$2;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/ao$2;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/ao$2;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/ao$2;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 364
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/ao$2;->b:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/app/ap;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 367
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/ao$2;->c:Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Landroid/support/v4/app/ao$2;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/ao$2;->b:Landroid/view/View;

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/ao;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 369
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->g:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->g:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/ao$2;->f:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/ap;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 379
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v2, p0, Landroid/support/v4/app/ao$2;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/ao$2;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    return-void
.end method
