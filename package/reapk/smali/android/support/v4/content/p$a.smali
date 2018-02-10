.class public final Landroid/support/v4/content/p$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/content/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/p;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/content/p;

    .prologue
    .line 53
    .local p0, "this":Landroid/support/v4/content/p$a;, "Landroid/support/v4/content/p<TD;>.a;"
    iput-object p1, p0, Landroid/support/v4/content/p$a;->a:Landroid/support/v4/content/p;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Landroid/support/v4/content/p$a;, "Landroid/support/v4/content/p<TD;>.a;"
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    .local p0, "this":Landroid/support/v4/content/p$a;, "Landroid/support/v4/content/p<TD;>.a;"
    iget-object v0, p0, Landroid/support/v4/content/p$a;->a:Landroid/support/v4/content/p;

    invoke-virtual {v0}, Landroid/support/v4/content/p;->H()V

    .line 65
    return-void
.end method
