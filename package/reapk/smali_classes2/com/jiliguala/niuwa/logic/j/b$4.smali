.class final Lcom/jiliguala/niuwa/logic/j/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/j/b;->a(Landroid/content/Context;ZZLcom/jiliguala/niuwa/logic/j/c;Landroid/view/View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/j/b$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/b$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->f(Landroid/content/Context;)V

    .line 115
    return-void
.end method
