.class final Lcom/google/android/gms/internal/qz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pe;


# instance fields
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdH:Ljava/util/List;

.field private synthetic zzcdI:Lcom/google/android/gms/internal/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Ljava/util/List;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/qz;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-object p3, p0, Lcom/google/android/gms/internal/qz;->zzcdH:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/qz;->zzcdI:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qr;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    const-string v2, "Transaction"

    iget-object v3, p0, Lcom/google/android/gms/internal/qz;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/lang/String;Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/DatabaseError;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    sget v1, Lcom/google/android/gms/internal/rt;->zzcem:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rs;->zza(Lcom/google/android/gms/internal/rs;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1}, Lcom/google/android/gms/internal/qr;->zzg(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/sl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zzb(Lcom/google/android/gms/internal/rs;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v5}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/yq;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/sl;->zza(JZZLcom/google/android/gms/internal/yj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zzg(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/qz;->zzcdI:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zze(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/wz;->zzj(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/wz;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ra;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ra;-><init>(Lcom/google/android/gms/internal/qz;Lcom/google/android/gms/internal/rs;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    new-instance v2, Lcom/google/android/gms/internal/tl;

    iget-object v3, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zzi(Lcom/google/android/gms/internal/rs;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zze(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qr;->zze(Lcom/google/android/gms/internal/qf;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1}, Lcom/google/android/gms/internal/qr;->zzi(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/qz;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/uy;->zzK(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/uy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qr;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Lcom/google/android/gms/internal/qr;->zzj(Lcom/google/android/gms/internal/qr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdI:Lcom/google/android/gms/internal/qr;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)V

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/qr;->zzo(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    invoke-static {v0}, Lcom/google/android/gms/internal/rs;->zzc(Lcom/google/android/gms/internal/rs;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/rt;->zzcen:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/google/android/gms/internal/rt;->zzceo:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/rs;->zza(Lcom/google/android/gms/internal/rs;I)I

    goto :goto_2

    :cond_2
    sget v2, Lcom/google/android/gms/internal/rt;->zzcek:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/rs;->zza(Lcom/google/android/gms/internal/rs;I)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rs;

    sget v3, Lcom/google/android/gms/internal/rt;->zzceo:I

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/rs;->zza(Lcom/google/android/gms/internal/rs;I)I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rs;->zza(Lcom/google/android/gms/internal/rs;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qr;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    :cond_5
    return-void
.end method
