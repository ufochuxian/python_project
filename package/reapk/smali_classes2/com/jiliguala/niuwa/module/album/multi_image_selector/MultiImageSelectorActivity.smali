.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;


# static fields
.field public static final EXTRA_DEFAULT_SELECTED_LIST:Ljava/lang/String; = "default_list"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "select_result"

.field public static final EXTRA_SELECT_COUNT:Ljava/lang/String; = "max_select_count"

.field public static final EXTRA_SELECT_MODE:Ljava/lang/String; = "select_count_mode"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "show_camera"

.field public static final MODE_MULTI:I = 0x1

.field public static final MODE_SINGLE:I


# instance fields
.field private mDefaultCount:I

.field private mSubmitButton:Landroid/widget/Button;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCameraShot(Ljava/io/File;)V
    .locals 3
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "select_result"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 149
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 152
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v4, 0x7f0b0028

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "max_select_count"

    const/16 v5, 0x9

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    .line 58
    const-string v4, "select_count_mode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 59
    .local v3, "mode":I
    const-string v4, "show_camera"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    .local v2, "isShow":Z
    if-ne v3, v7, :cond_0

    const-string v4, "default_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const-string v4, "default_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    .line 64
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "max_select_count"

    iget v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v4, "select_count_mode"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v4, "show_camera"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const-string v4, "default_result"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    const v5, 0x7f090284

    const-class v6, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .line 71
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/an;->h()I

    .line 74
    const v4, 0x7f0900c0

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v4, 0x7f090153

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    .line 84
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const-string v5, "\u5b8c\u6210"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v5, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$2;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5b8c\u6210("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b8c\u6210("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :cond_1
    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b8c\u6210("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b8c\u6210("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->mDefaultCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v1, "select_result"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 110
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 112
    return-void
.end method
