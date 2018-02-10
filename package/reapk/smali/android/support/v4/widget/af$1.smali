.class final Landroid/support/v4/widget/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/af;->a(Landroid/support/v4/widget/af$b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/af$b;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/af$b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Landroid/support/v4/widget/af$1;->a:Landroid/support/v4/widget/af$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/widget/af$1;->a:Landroid/support/v4/widget/af$b;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/af$b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/widget/af$1;->a:Landroid/support/v4/widget/af$b;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/af$b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
