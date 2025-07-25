import { User } from "@vendure/core";

export class StorageService {
    static userInfo: User | null = null;
    static passwordResetToken: string | null = null;
}
