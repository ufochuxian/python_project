.class Landroid/support/v4/view/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/q;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/q;

    .prologue
    .line 36
    invoke-static {p1, p2}, Landroid/support/v4/view/n;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/q;)V

    .line 37
    return-void
.end method
