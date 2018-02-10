.class final Lcn/jpush/android/data/g$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/data/g;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/data/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/jpush/android/data/g;


# direct methods
.method constructor <init>(Lcn/jpush/android/data/g;Lcn/jpush/android/data/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iput-object p2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object p3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/16 v10, 0x3e3

    const/16 v9, 0x3f6

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 118
    const-string v0, "ShowEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "showEntity process start run! showMode = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v4, v4, Lcn/jpush/android/data/g;->M:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", richType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v4, v4, Lcn/jpush/android/data/g;->L:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", jumpMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v4, v4, Lcn/jpush/android/data/g;->K:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->M:I

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "ShowEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected: unknown show  mode - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v4, v0, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v5, v0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v0, v0, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->L:I

    if-nez v2, :cond_8

    .line 131
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v1, v1, Lcn/jpush/android/data/g;->w:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    :cond_1
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v0, v1, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    .line 161
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 1032
    invoke-static {v4, v10, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v0, "ShowEntity"

    const-string v1, "Get network picture failed, show basic notification only."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_4
    const-string v0, "ShowEntity"

    const-string v1, "No permission to write resource to storage, show basic notification only."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_5
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jpush/android/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 149
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v0, v1, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_6
    const-string v0, "ShowEntity"

    const-string v1, "Get developer picture failed, show basic notification only."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_7
    const-string v0, "ShowEntity"

    const-string v1, "No permission to read resource from storage, show basic notification only."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_8
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    if-ne v8, v0, :cond_9

    .line 165
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v5, v0, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 2032
    invoke-static {v4, v10, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    .line 171
    :cond_9
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 172
    const-string v0, "ShowEntity"

    const-string v1, "Rich-push needs the permission of WRITE_EXTERNAL_STORAGE, please request it."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 3032
    invoke-static {v4, v9, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 182
    :goto_2
    if-ge v0, v8, :cond_10

    .line 183
    const/4 v2, 0x5

    const-wide/16 v6, 0x1388

    invoke-static {v5, v2, v6, v7}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJ)Lcn/jiguang/net/HttpResponse;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_b

    .line 185
    const/4 v0, 0x1

    .line 186
    invoke-virtual {v2}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_3
    iget-object v6, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v6, v4}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    if-eqz v0, :cond_c

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".html"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v5, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v5, v5, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 208
    iget-object v5, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v5, v5, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v8, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-virtual {v8}, Lcn/jpush/android/data/g;->a()Z

    move-result v8

    invoke-static {v5, v7, v1, v4, v8}, Lcn/jpush/android/data/b;->a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 209
    if-nez v5, :cond_d

    .line 211
    const-string v0, "ShowEntity"

    const-string v1, "Loads rich push resources failed, webView will open url!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 5032
    invoke-static {v4, v9, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    .line 182
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    :cond_c
    const-string v0, "ShowEntity"

    const-string v1, "NOTE: failed to download html page. Give up this."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 4032
    invoke-static {v4, v9, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 201
    const/16 v0, 0x3fd

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v5}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 217
    :cond_d
    const-string v5, "ShowEntity"

    const-string v7, "Loads rich push resources succeed, webView will open cache!"

    invoke-static {v5, v7}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "img src=\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "img src=\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 224
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 6032
    invoke-static {v4, v10, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    .line 228
    :cond_e
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 7032
    invoke-static {v4, v9, v3, v0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 231
    :cond_f
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v1, v1, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move-object v2, v3

    goto/16 :goto_3
.end method
