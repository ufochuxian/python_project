.class Landroid/support/v7/app/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/v;


# direct methods
.method constructor <init>(Landroid/support/v7/app/v;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/v;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/app/v$1;->a:Landroid/support/v7/app/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/v$1;->a:Landroid/support/v7/app/v;

    invoke-virtual {v0}, Landroid/support/v7/app/v;->A()V

    .line 62
    return-void
.end method
