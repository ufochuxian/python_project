.class Lcom/jakewharton/rxbinding/b/p$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/p;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/p;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/p;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/p;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/p$2;->a:Lcom/jakewharton/rxbinding/b/p;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/p$2;->a:Lcom/jakewharton/rxbinding/b/p;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/p;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    return-void
.end method
