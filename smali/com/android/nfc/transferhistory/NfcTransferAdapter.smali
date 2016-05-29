.class public Lcom/android/nfc/transferhistory/NfcTransferAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcTransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field private mNfcTransferInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    .line 40
    iput p2, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mLayout:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    const/16 v17, 0x0

    .line 60
    .local v17, "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 61
    .local v11, "r":Landroid/content/res/Resources;
    if-nez p2, :cond_6

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 64
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mLayout:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v17, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .end local v17    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    invoke-direct/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;-><init>()V

    .line 67
    .restart local v17    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    const v20, 0x7f0c0010

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$002(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 69
    const v20, 0x7f0c0011

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_title:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$102(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 71
    const v20, 0x7f0c000e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->targetdevice:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$202(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 73
    const v20, 0x7f0c000d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_date:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$302(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 75
    const v20, 0x7f0c0012

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    # setter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_text:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$402(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 77
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v8    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mNfcTransferInfoArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 85
    .local v10, "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v12

    .line 86
    .local v12, "status":I
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v7

    .line 87
    .local v7, "dir":I
    const v20, 0x7f08002b

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "mErrorTip":Ljava/lang/String;
    const/16 v20, 0x2

    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 89
    const v20, 0x7f080032

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    :cond_0
    :goto_1
    invoke-static {v12}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusError(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 95
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f020007

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_2
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v16

    .line 109
    .local v16, "title":Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 110
    :cond_1
    const v20, 0x7f080029

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 112
    :cond_2
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_title:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$100(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "deviceName":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 118
    :cond_3
    const v20, 0x7f08002a

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    :cond_4
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->targetdevice:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$200(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileSize()J

    move-result-wide v18

    .line 125
    .local v18, "totalBytes":J
    invoke-static {v12}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusError(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 126
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_text:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$400(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_5
    :goto_3
    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCompleteTime()J

    move-result-wide v14

    .line 140
    .local v14, "time":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 141
    .local v5, "d":Ljava/util/Date;
    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 143
    .local v13, "str":Ljava/lang/CharSequence;
    :goto_4
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_date:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$300(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-object p2

    .line 79
    .end local v5    # "d":Ljava/util/Date;
    .end local v6    # "deviceName":Ljava/lang/String;
    .end local v7    # "dir":I
    .end local v9    # "mErrorTip":Ljava/lang/String;
    .end local v10    # "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .end local v12    # "status":I
    .end local v13    # "str":Ljava/lang/CharSequence;
    .end local v14    # "time":J
    .end local v16    # "title":Ljava/lang/String;
    .end local v18    # "totalBytes":J
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    check-cast v17, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .restart local v17    # "viewHolder":Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    goto/16 :goto_0

    .line 90
    .restart local v7    # "dir":I
    .restart local v9    # "mErrorTip":Ljava/lang/String;
    .restart local v10    # "mNfcTransferInfoMember":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .restart local v12    # "status":I
    :cond_7
    const/16 v20, 0x1

    invoke-virtual {v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 91
    const v20, 0x7f080031

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 97
    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v7, v0, :cond_9

    .line 98
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f020009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 101
    :cond_9
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f020008

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 128
    .restart local v6    # "deviceName":Ljava/lang/String;
    .restart local v16    # "title":Ljava/lang/String;
    .restart local v18    # "totalBytes":J
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    .line 130
    const v20, 0x7f08003e

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "completeText":Ljava/lang/String;
    # getter for: Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_text:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->access$400(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 141
    .end local v4    # "completeText":Ljava/lang/String;
    .restart local v5    # "d":Ljava/util/Date;
    .restart local v14    # "time":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4
.end method
