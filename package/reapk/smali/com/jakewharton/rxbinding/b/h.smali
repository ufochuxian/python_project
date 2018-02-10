.class final Lcom/jakewharton/rxbinding/b/h;
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
        "Lcom/jakewharton/rxbinding/b/g;",
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

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/g;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/g;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local p2, "handled":Lrx/c/p;, "Lrx/c/p<-Lcom/jakewharton/rxbinding/b/g;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/h;->a:Landroid/widget/AdapterView;

    .line 20
    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/h;->b:Lrx/c/p;

    .line 21
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
            "Lcom/jakewharton/rxbinding/b/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/g;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 26
    new-instance v0, Lcom/jakewharton/rxbinding/b/h$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/h$1;-><init>(Lcom/jakewharton/rxbinding/b/h;Lrx/l;)V

    .line 40
    .local v0, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/h;->a:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 42
    new-instance v1, Lcom/jakewharton/rxbinding/b/h$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/h$2;-><init>(Lcom/jakewharton/rxbinding/b/h;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 47
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/h;->a(Lrx/l;)V

    return-void
.end method
