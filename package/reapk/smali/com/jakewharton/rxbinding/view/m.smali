.class public abstract Lcom/jakewharton/rxbinding/view/m;
.super Lcom/jakewharton/rxbinding/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/k",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/k;-><init>(Landroid/view/View;)V

    .line 12
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/m;->a:Landroid/view/View;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/m;->a:Landroid/view/View;

    return-object v0
.end method
