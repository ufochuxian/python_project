.class Lcom/jakewharton/rxbinding/view/a$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/a;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/a;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/a;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/a$2;->a:Lcom/jakewharton/rxbinding/view/a;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/a$2;->a:Lcom/jakewharton/rxbinding/view/a;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/a;->a:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 53
    return-void
.end method
