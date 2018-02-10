.class public Lcom/pingplusplus/android/WebViewEx;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/WebViewEx$b;,
        Lcom/pingplusplus/android/WebViewEx$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getClass"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hashCode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notifyAll"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "equals"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "toString"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wait"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pingplusplus/android/WebViewEx;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 345
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 346
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 353
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 348
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 350
    :cond_1
    const-class v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/pingplusplus/android/WebViewEx$a;

    invoke-direct {v0, p0}, Lcom/pingplusplus/android/WebViewEx$a;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 66
    new-instance v0, Lcom/pingplusplus/android/WebViewEx$b;

    invoke-direct {v0, p0}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->a()Z

    .line 70
    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 136
    instance-of v0, p1, Lcom/pingplusplus/android/WebViewEx;

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->b()V

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 200
    const-string v2, "if(typeof(window."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!=\'undefined\'){"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    console.log(\'window."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_js_interface_name is exist!!\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, "}else {"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, "    window."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 210
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 211
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-direct {p0, v6}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 217
    :cond_2
    const-string v0, "        "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ":function("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v7, v0

    .line 220
    if-lez v7, :cond_4

    .line 221
    add-int/lit8 v8, v7, -0x1

    move v0, v1

    .line 222
    :goto_3
    if-ge v0, v8, :cond_3

    .line 223
    const-string v9, "arg"

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    :cond_3
    const-string v0, "arg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_4
    const-string v0, ") {"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_5

    .line 232
    const-string v0, "            return "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "prompt(\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "MyApp:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_4
    const-string v0, "JSON.stringify({"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "obj"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v0, "func"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "args"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    if-lez v7, :cond_7

    .line 244
    add-int/lit8 v5, v7, -0x1

    move v0, v1

    .line 245
    :goto_5
    if-ge v0, v5, :cond_6

    .line 246
    const-string v6, "arg"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 234
    :cond_5
    const-string v0, "            prompt(\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "MyApp:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 248
    :cond_6
    const-string v0, "arg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    :cond_7
    const-string v0, "]})"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v0, ");"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, "        }, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 260
    :cond_8
    const-string v0, "    };"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, "}"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private a()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "searchBoxJavaBridge_"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 116
    const-string v0, "accessibility"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 117
    const-string v0, "accessibilityTraversal"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    .line 305
    iget-object v2, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 306
    if-nez v5, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 338
    :goto_0
    return v1

    .line 311
    :cond_0
    const/4 v2, 0x0

    .line 313
    if-eqz p4, :cond_5

    .line 314
    array-length v3, p4

    move v4, v3

    .line 317
    :goto_1
    if-lez v4, :cond_1

    .line 318
    new-array v2, v4, [Ljava/lang/Class;

    move v3, v1

    .line 319
    :goto_2
    if-ge v3, v4, :cond_1

    .line 320
    aget-object v6, p4, v3

    invoke-direct {p0, v6}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v3

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 325
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_3

    :cond_2
    move v2, v0

    .line 328
    :goto_3
    if-eqz v2, :cond_4

    const-string v2, ""

    .line 329
    :goto_4
    invoke-virtual {p1, v2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :goto_5
    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    move v1, v0

    .line 338
    goto :goto_0

    :cond_3
    move v2, v1

    .line 327
    goto :goto_3

    .line 328
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_4

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    .line 335
    goto :goto_5

    .line 333
    :catch_1
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_5

    :cond_5
    move v4, v1

    goto :goto_1
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string v1, "MyApp:"

    .line 268
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v1, "obj"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-string v1, "func"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    const-string v1, "args"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 278
    const/4 v1, 0x0

    .line 279
    if-eqz v5, :cond_1

    .line 280
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 281
    if-lez v6, :cond_1

    .line 282
    new-array v1, v6, [Ljava/lang/Object;

    move v2, v0

    .line 284
    :goto_1
    if-ge v2, v6, :cond_1

    .line 285
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_1
    invoke-direct {p0, p5, v3, v4, v1}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    :cond_2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/pingplusplus/android/WebViewEx;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 357
    sget-object v2, Lcom/pingplusplus/android/WebViewEx;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 358
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 362
    :cond_0
    return v0

    .line 357
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->c()V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->d()Ljava/lang/String;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 190
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string v0, "javascript:(function JsAddJavascriptInterface_(){"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 181
    invoke-direct {p0, v1, v0, v3}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :cond_1
    const-string v0, "})()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/WebViewEx;->c:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx;->b()V

    goto :goto_0
.end method
