.class Landroid/support/v7/widget/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->t()V

    .line 1324
    return-void
.end method
