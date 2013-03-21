.class Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 383
    iput-object p1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const v3, 0x7f040016

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, view:Landroid/view/View;
    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/OriginalSettings/CredentialStorage;->access$500(Lcom/android/OriginalSettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/android/OriginalSettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0543

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 397
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v3, 0x7f08002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 399
    iget-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 401
    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 403
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0542

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 409
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 410
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 411
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 412
    iget-object v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    return-void

    .line 389
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/OriginalSettings/CredentialStorage;->access$500(Lcom/android/OriginalSettings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/android/OriginalSettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0547

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 391
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/OriginalSettings/CredentialStorage;->access$500(Lcom/android/OriginalSettings/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 392
    invoke-virtual {p1}, Lcom/android/OriginalSettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0548

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 394
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x7f0b0549

    new-array v4, v5, [Ljava/lang/Object;

    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/OriginalSettings/CredentialStorage;->access$500(Lcom/android/OriginalSettings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/android/OriginalSettings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 417
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 420
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 426
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 430
    iget-boolean v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 431
    iput-boolean v3, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 432
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/OriginalSettings/CredentialStorage;->access$400(Lcom/android/OriginalSettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 434
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #getter for: Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/OriginalSettings/CredentialStorage;->access$400(Lcom/android/OriginalSettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 435
    .local v0, error:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #setter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/OriginalSettings/CredentialStorage;->access$502(Lcom/android/OriginalSettings/CredentialStorage;I)I

    .line 437
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    const v2, 0x7f0b054c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 442
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #calls: Lcom/android/OriginalSettings/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/OriginalSettings/CredentialStorage;->access$600(Lcom/android/OriginalSettings/CredentialStorage;)V

    .line 458
    .end local v0           #error:I
    :cond_0
    :goto_0
    return-void

    .line 443
    .restart local v0       #error:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #setter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/OriginalSettings/CredentialStorage;->access$502(Lcom/android/OriginalSettings/CredentialStorage;I)I

    .line 445
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    const v2, 0x7f0b054a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 449
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #calls: Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/OriginalSettings/CredentialStorage;->access$700(Lcom/android/OriginalSettings/CredentialStorage;)V

    goto :goto_0

    .line 450
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/CredentialStorage;->access$502(Lcom/android/OriginalSettings/CredentialStorage;I)I

    .line 453
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    #calls: Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/OriginalSettings/CredentialStorage;->access$700(Lcom/android/OriginalSettings/CredentialStorage;)V

    goto :goto_0

    .line 457
    .end local v0           #error:I
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/OriginalSettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 423
    return-void
.end method
