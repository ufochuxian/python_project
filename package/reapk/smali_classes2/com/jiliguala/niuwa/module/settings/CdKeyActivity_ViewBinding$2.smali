.class Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;->b:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "p0"    # Landroid/text/Editable;

    .prologue
    .line 67
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 63
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 59
    return-void
.end method
