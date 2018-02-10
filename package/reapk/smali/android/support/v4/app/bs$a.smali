.class Landroid/support/v4/app/bs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bs$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Service;I)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "flags"    # I

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/support/v4/app/bt;->a(Landroid/app/Service;I)V

    .line 102
    return-void
.end method
