.class public Lcom/jiliguala/niuwa/common/helper/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final a:Ljava/lang/String; = "boy"

.field public static final b:Ljava/lang/String; = "girl"

.field public static final c:I = 0x7f090235

.field public static final d:I = 0x7f090234


# instance fields
.field e:Lcom/jiliguala/niuwa/common/helper/a/b;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V
    .locals 0
    .param p1, "checker"    # Lcom/jiliguala/niuwa/common/helper/a/b;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/helper/c/e;->e:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RadioGroup;)Lcom/jiliguala/niuwa/common/helper/c/e;
    .locals 0
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 29
    :cond_0
    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x6a

    .line 34
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->requestFocus()Z

    .line 35
    packed-switch p2, :pswitch_data_0

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/e;->e:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(IZLjava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/e;->e:Lcom/jiliguala/niuwa/common/helper/a/b;

    const-string v1, "boy"

    invoke-interface {v0, v3, v2, v1}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(IZLjava/lang/Object;)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/helper/c/e;->e:Lcom/jiliguala/niuwa/common/helper/a/b;

    const-string v1, "girl"

    invoke-interface {v0, v3, v2, v1}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(IZLjava/lang/Object;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x7f090234
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
