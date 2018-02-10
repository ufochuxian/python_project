.class final Lcom/jakewharton/rxbinding/b/o;
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
        "Lcom/jakewharton/rxbinding/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/o;->a:Landroid/widget/AutoCompleteTextView;

    .line 18
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
            "Lcom/jakewharton/rxbinding/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/d;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/b/o$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/o$1;-><init>(Lcom/jakewharton/rxbinding/b/o;Lrx/l;)V

    .line 30
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/o;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    new-instance v1, Lcom/jakewharton/rxbinding/b/o$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/o$2;-><init>(Lcom/jakewharton/rxbinding/b/o;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/o;->a(Lrx/l;)V

    return-void
.end method
