.class final Lcom/jakewharton/rxbinding/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/f;->a:Landroid/widget/AdapterView;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/b/f$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/f$1;-><init>(Lcom/jakewharton/rxbinding/b/f;Lrx/l;)V

    .line 28
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/f;->a:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    new-instance v1, Lcom/jakewharton/rxbinding/b/f$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/f$2;-><init>(Lcom/jakewharton/rxbinding/b/f;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 35
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/f;->a(Lrx/l;)V

    return-void
.end method
