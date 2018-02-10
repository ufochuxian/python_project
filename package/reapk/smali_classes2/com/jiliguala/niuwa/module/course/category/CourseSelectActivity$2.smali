.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;)V
    .locals 10
    .param p1, "courseChannelModelTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;

    .prologue
    const/4 v7, 0x0

    .line 124
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 125
    if-eqz p1, :cond_9

    .line 126
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 127
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->ch:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->ch:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->courses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->courses:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->cat:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz v6, :cond_2

    .line 136
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->cat:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->page:I

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$402(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I

    .line 141
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->channel:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$902(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->catid:Ljava/lang/String;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 144
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    .line 145
    .local v1, "cat":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;
    iget-boolean v8, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->sel:Z

    if-eqz v8, :cond_3

    .line 152
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->desc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->age:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1202(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ""

    .line 156
    .local v5, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 157
    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->age:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->age:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 158
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->age:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;

    .line 159
    .local v0, "age":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;
    iget-boolean v6, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;->sel:Z

    if-eqz v6, :cond_4

    .line 160
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;->ttl:Ljava/lang/String;

    .line 161
    move v3, v2

    .line 163
    :cond_4
    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;->ttl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "age":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;
    :cond_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_a

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setVisibility(I)V

    .line 166
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 167
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->a(Ljava/util/List;I)V

    .line 169
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v1    # "cat":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;
    .end local v2    # "index":I
    .end local v3    # "pos":I
    .end local v4    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "title":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1402(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I

    .line 175
    :cond_8
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->catid:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1502(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1002(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    move-result-object v6

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->updateData(Ljava/util/ArrayList;Z)V

    .line 179
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1600(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->notifyDataSetChanged()V

    .line 180
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$602(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 181
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    .line 184
    :cond_9
    return-void

    .restart local v1    # "cat":Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;
    .restart local v2    # "index":I
    .restart local v3    # "pos":I
    .restart local v4    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "title":Ljava/lang/String;
    :cond_a
    move v6, v7

    .line 165
    goto :goto_1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$602(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 120
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$2;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;)V

    return-void
.end method
